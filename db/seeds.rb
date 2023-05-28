# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
require 'faker'

User.destroy_all
puts "Users destroyed"
Pet.destroy_all
puts "Pets destroyed"
Booking.destroy_all
puts "Bookings destroyed"

tommy = User.create!(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: "tommy@gmail.com",
  password: "123456"
)

max = User.create!(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: "max@gmail.com",
  password: "123456"
)

dylan = User.create!(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: "dylan@gmail.com",
  password: "123456"
)

saida = User.create!(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: "saida@gmail.com",
  password: "123456"
)


file_1 = URI.open("https://res.cloudinary.com/dscmyi9t3/image/upload/v1678553178/gg41emjq8xvkk8b7kfke.webp")
pet_1 = Pet.new(name: "Mr Humphries", category: "hamster", breed: "syrian hamster", age: 5, location: "86 Castledore Road", user: tommy)
pet_1.photos.attach(io: file_1, filename: "hamster.jpg", content_type: "image/jpg")
pet_1.save!

file_2 = URI.open("https://res.cloudinary.com/dscmyi9t3/image/upload/v1678553530/oak2p8bz7n4fj0uywh8v.avif")
pet_2 = Pet.new(name: "Bubble", category: "dog", breed: "pug", age: 4, location: "35 Bullwood Rd", user: max)
pet_2.photos.attach(io: file_2, filename: "dog.jpg", content_type: "image/jpg")
pet_2.save!

file_3 = URI.open("https://res.cloudinary.com/dscmyi9t3/image/upload/v1678564417/maju6fl8tiowukljbnoa.jpg")
pet_3 = Pet.new(name: "Birdie", category: "parrot", breed: "cockatiel", age: 5, location: "16 Northgate Street", user: saida)
pet_3.photos.attach(io: file_3, filename: "nes.jpg", content_type: "image/jpg")
pet_3.save!

file_4 = URI.open("https://res.cloudinary.com/dulhxkrrm/image/upload/v1669308152/development/0kh97wawhgq9arxdoftdkhnfpnq2.jpg")
pet_4 = Pet.new(name: "Neko", category: "cat", breed: "birman", age: 8, location: "40 Wartnaby Road", user: dylan)
pet_4.photos.attach(io: file_4, filename: "nes.jpg", content_type: "image/jpg")
pet_4.save!

file_5 = URI.open("https://res.cloudinary.com/dulhxkrrm/image/upload/v1669308155/development/9r63mvg9gu4lxwglxajiao5heo3l.jpg")
pet_5 = Pet.new(name: "Makima", category: "rabbit", breed: "havana", age: 6, location: "62 Abingdon Road", user: tommy)
pet_5.photos.attach(io: file_5, filename: "nes.jpg", content_type: "image/jpg")
pet_5.save!

file_6 = URI.open("https://res.cloudinary.com/dscmyi9t3/image/upload/v1678564112/o6zfsaucunkzlotlzn5w.webp")
pet_6 = Pet.new(name: "Gloria", category: "turtle", breed: "bush", age: 10, location: "88 Marcham Road", user: max)
pet_6.photos.attach(io: file_6, filename: "nes.jpg", content_type: "image/jpg")
pet_6.save!
