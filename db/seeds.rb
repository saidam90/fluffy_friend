# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
Pet.destroy_all

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
      name: ["Maya", "Gus", "Mr Humphries", "Pochita", "Bubble", "Rex"].sample,
      category: ["dog", "cat", "hamster", "bird", "rabbit", "horse", "fish", "guinea pig"].sample,
      breed: ["poodle", "bulldog", "scottish fold", "beagle", "golden retriever", "labrador"].sample,
      age: Faker::Number.number(digits: 2),
      location: Faker::Address.street_address
    )
    pet.user = user
    pet.save!
  end
end
