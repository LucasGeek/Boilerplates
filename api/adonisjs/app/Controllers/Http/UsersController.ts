import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import UpdateUserValidator from 'App/Validators/UpdateUserValidator'
import CreateUserValidator from 'App/Validators/CreateUserValidator'
import User from 'App/Models/User'

export default class UsersController {
  public async update({ request, response, bouncer }: HttpContextContract) {
    const { email, password } = await request.validate(UpdateUserValidator)
    const id = request.param('id')
    const user = await User.findOrFail(id)

    await bouncer.authorize('updateUser', user)

    user.email = email
    user.password = password
    await user.save()

    return response.ok({ user })
  }

  public async store({ request, response }: HttpContextContract) {
    const userPayload = await request.validate(CreateUserValidator)
    const user = await User.create(userPayload)
    return response.created({ user })
  }
}
