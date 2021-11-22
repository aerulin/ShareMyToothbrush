# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# User seed
puts 'Creating user'
30.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    photo_url: Faker::LoremPixel.image,
  )
  user.save!
  2.times do
    toothbrush = Toothbrush.new(
      title: Faker::Marketing.buzzwords,
      condition: ["hard", "semi hard", "smooth", "bad"].sample,
      description: Faker::Lorem.words(number: rand(20..30)),
      brand: Faker::Company.name,
      user: user,
      category: ["Premium", "Eco-friendly", "Vintage", "Famous"].sample,
      price: rand(250)
    )
    toothbrush.save!
  end
end

puts 'User created'
