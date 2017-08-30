# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(name:"admin")
Role.create(name:"author")
Role.create(name:"moderator")
Role.create(name:"user")

User.create(username: "admin", email: "admin@gmail.com", password:"secret123")
User.last.roles << Role.first

User.create(username: "author", email: "author@gmail.com", password:"secret123")
User.last.roles << Role.second

User.create(username: "moderator", email: "moderator@gmail.com", password:"secret123")
User.last.roles << Role.third

User.create(username: "user", email: "user@gmail.com", password:"secret123")
User.last.roles << Role.last