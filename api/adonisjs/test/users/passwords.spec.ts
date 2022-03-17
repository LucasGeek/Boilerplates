import Database from '@ioc:Adonis/Lucid/Database'
import { UserFactory } from 'Database/factories'
import Mail from '@ioc:Adonis/Addons/Mail'
import Hash from '@ioc:Adonis/Core/Hash'
import supertest from 'supertest'
import test from 'japa'
import { DateTime, Duration } from 'luxon'

const BASE_URL = `http://${process.env.HOST}:${process.env.PORT}`

test.group('Password', (group) => {
  test('it should send email with forgot password instructions', async (assert) => {
    const user = await UserFactory.create()

    Mail.trap((message) => {
      assert.deepEqual(message.to, [
        {
          address: user.email,
        },
      ])
      assert.deepEqual(message.from, {
        address: 'no-reply@api.com',
      })
      assert.equal(message.subject, 'API: Recuperação de Senha')
      assert.include(message.html!, user.username)
    })

    await supertest(BASE_URL)
      .post('/forgot-password')
      .send({
        email: user.email,
        resetPasswordUrl: 'url',
      })
      .expect(204)

    Mail.restore()
  })

  test('it should create reset password token', async (assert) => {
    const user = await UserFactory.create()

    Mail.trap((message) => {
      assert.deepEqual(message.to, [
        {
          address: user.email,
        },
      ])
      assert.deepEqual(message.from, {
        address: 'no-reply@api.com',
      })
      assert.equal(message.subject, 'API: Recuperação de Senha')
      assert.include(message.html!, user.username)
    })

    await supertest(BASE_URL)
      .post('/forgot-password')
      .send({
        email: user.email,
        resetPasswordUrl: 'url',
      })
      .expect(204)
    Mail.restore()

    const tokens = user.related('tokens').query()
    assert.isNotEmpty(tokens)
  })

  test('it should return 422 when email is invalid', async (assert) => {
    const { body } = await supertest(BASE_URL)
      .post('/forgot-password')
      .send({ email: 'test@', resetPasswordUrl: 'url' })
      .expect(422)
    assert.equal(body.code, 'BAD_REQUEST')
    assert.equal(body.status, 422)
  })

  test('it should return 422 when required data is not provided or data is invalid', async (assert) => {
    const { body } = await supertest(BASE_URL).post('/forgot-password').send().expect(422)
    assert.equal(body.code, 'BAD_REQUEST')
    assert.equal(body.status, 422)
  })

  test('it should be able to reset password', async (assert) => {
    const user = await UserFactory.create()
    const { token } = await user.related('tokens').create({ token: 'token' })
    const password = 'test1234'

    await supertest(BASE_URL).post('/reset-password').send({ token, password }).expect(204)

    await user.refresh()
    assert.isTrue(await Hash.verify(user.password, password))
  })

  test('it should return 422 when required data is not provided or data is invalid', async (assert) => {
    const { body } = await supertest(BASE_URL).post('/reset-password').send().expect(422)
    assert.equal(body.code, 'BAD_REQUEST')
    assert.equal(body.status, 422)
  })

  test('it should return 404 when using the same token twice', async (assert) => {
    const user = await UserFactory.create()
    const { token } = await user.related('tokens').create({ token: 'token' })
    const password = 'test1234'

    await supertest(BASE_URL).post('/reset-password').send({ token, password }).expect(204)
    const { body } = await supertest(BASE_URL)
      .post('/reset-password')
      .send({ token, password })
      .expect(404)

    assert.equal(body.code, 'BAD_REQUEST')
    assert.equal(body.status, 404)
  })

  test('it cannot reset password when token is expired after 2 hours', async (assert) => {
    const user = await UserFactory.create()
    const date = DateTime.now().minus(Duration.fromISOTime('02:01'))
    const { token } = await user.related('tokens').create({ token: 'token', createdAt: date })
    const password = 'test1234'

    const { body } = await supertest(BASE_URL)
      .post('/reset-password')
      .send({ token, password })
      .expect(410)

    assert.equal(body.code, 'TOKEN_EXPIRED')
    assert.equal(body.status, 410)
    assert.equal(body.message, 'token has expired')
  })

  group.beforeEach(async () => {
    await Database.beginGlobalTransaction()
  })

  group.afterEach(async () => {
    await Database.rollbackGlobalTransaction()
  })
})
