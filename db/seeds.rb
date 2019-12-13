# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.where(email: "test@this.com").first
user1.delete if user1

user2 = User.where(email: "somebody@this.com").first
user2.delete if user2

user1 = User.create(email: "test@this.com", password: "123456")
user1.save

user2 = User.create(email: "somebody@this.com", password: "123456")
user2.save

event1 = Event.where(title: "This is an event").first
event1.delete if event1