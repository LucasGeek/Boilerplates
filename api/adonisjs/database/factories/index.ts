import Factory from '@ioc:Adonis/Lucid/Factory'
import User from 'App/Models/User'

export const UserFactory = Factory.define(User, ({ faker }) => {
  const user = {
    username: faker.name.firstName().toLowerCase(),
    email: faker.internet.email(),
    password: faker.internet.password(),
  }

  return user
}).build()
