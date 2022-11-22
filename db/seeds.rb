# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

3.times do
  user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "123456"
    # owner: [true, false].sample
  )
  10.times do
    pet = Pet.new(
      name: Faker::Name.name,
      category: Faker::Creature::Animal.name,
      breed: Faker::Creature::Animal.name,
      age: Faker::Number.number(digits: 2),
      location: Faker::Address.street_address
    )
    pet.user = user
    pet.save!
  end
end
