# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.destroy_all
User.destroy_all

user = User.create!(name: Faker::Name.name)
user.lists.create!(name: "My fun list", trip_type: 'Camping',travelers: 'Paul', destination: 'Paris', date: '2019-07-06', duration: 7)
