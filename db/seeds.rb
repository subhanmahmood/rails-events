# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.where(email: "user1@test.com").first
user1.delete if user1

user2 = User.where(email: "user2@test.com").first
user2.delete if user2

user1 = User.create(email: "user1@test.com", password: "123456")
user1.save

user2 = User.create(email: "user2@test.com", password: "123456")
user2.save

event1 = Event.where(title: "New Years Party").first
event1.delete if event1

event1 = Event.create(user_id: user1.id, title: "New Years Party", location: "123 Good Street", date: "2020-12-31", description: "I don't know, something's happening");
event1.save

task1 = Task.where(title: "Book venue").first
task1.delete if task1

task1 = Task.create(user_id: user1.id, event_id: event1.id, title: "Book venue", deadline: "2020-12-23", description: "Call venue and book")
task1.save

task2 = Task.where(title: "Send invites out").first
task2.delete if task2

task2 = Task.create(user_id: user1.id, event_id: event1.id, title: "Send invites out", deadline: "2020-12-25", description: "Call venue and book")
task2.save


event2 = Event.where(title: "Placement Talk").first
event2.delete if event2

event2 = Event.create(user_id: user2.id, title: "Placement Talk", location: "Stag Hill Campus, LTL", date: "2019-12-19", description: "Talk by various speakers from companies");
event2.save

task2 = Task.where(title: "Send emails to students").first
task2.delete if task2

task2 = Task.create(user_id: user2.id, event_id: event2.id, title: "Send emails to students", deadline: "2020-12-25", description: "Call venue and book")
task2.save

message1 = Message.where(body: "When is the party starting?").first
message1.delete if message1

message1 = Message.create(user_id: user1.id, event_id: event1.id, body: "When is the party starting?")
message1.save

message1 = Message.where(body: "7pm").first
message1.delete if message1

message1 = Message.create(user_id: user2.id, event_id: event1.id, body: "7pm")
message1.save
