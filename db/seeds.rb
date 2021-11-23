require 'faker'

# # User seed
# puts 'Creating user'
# 30.times do
#   user = User.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     address: Faker::Address.street_address,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password,
#     photo_url: Faker::LoremPixel.image,
#   )
#   user.save!
#   2.times do
#     toothbrush = Toothbrush.new(
#       title: Faker::Marketing.buzzwords,
#       condition: ["hard", "semi hard", "smooth", "bad"].sample,
#       description: Faker::Lorem.words(number: rand(20..30)),
#       brand: Faker::Company.name,
#       user: user,
#       category: ["Premium", "Eco-friendly", "Vintage", "Famous"].sample,
#       price: rand(250)
#     )
#     toothbrush.save!
#   end
# end
# puts 'User created'


# User Creation

puts "Cleaning User database..."
User.destroy_all
puts "All users deleted"
puts "Cleaning Toothbrushes database..."
Toothbrush.destroy_all

puts 'Creating Catherine'
catherine = User.new(
  first_name: 'Catherine',
  last_name: 'Leduc',
  address: 'Route des Faisans, Renens, Suisse',
  email: 'catherine@gmail.com',
  password: 'catherine',
  photo_url: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
)
catherine.save!
puts 'Created Catherine !'

puts 'Creating Jacques'
jacques = User.new(
  first_name: 'Jacques',
  last_name: 'Chichi',
  address: 'Route Elysée, Paris, France',
  email: 'jacques@gmail.com',
  password: 'jacques',
  photo_url: 'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
)
jacques.save!
puts 'Created Jacques !'

  puts 'Creating Antoine'
antoine = User.new(
  first_name: 'Antoine',
  last_name: 'Leblond',
  address: 'Route des Coiffeurs, Genève, Suisse',
  email: 'antoine@gmail.com',
  password: 'antoine',
  photo_url: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
)
antoine.save!
puts 'Created Antoine !'

puts 'Creating Patrick'
patrick = User.new(
  first_name: 'Patrick',
  last_name: 'Konattendpas',
  address: 'Camping des Flots Verts, Nice, France',
  email: 'patrick@gmail.com',
  password: 'patrick',
  photo_url: 'https://arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/WDSEQZ3E27V37MKMD5GZ5XSV4U.jpg',
)
patrick.save!
puts 'Created Patrick !'

puts 'Creating Slimane'
slimane = User.new(
  first_name: 'Slimane',
  last_name: 'Pillierdelascep',
  address: 'SCEP - Société Cairote de Poulet , Le Caire, Egypte',
  email: 'slimane@gmail.com',
  password: 'slimane',
  photo_url: 'https://fr.web.img3.acsta.net/medias/nmedia/18/35/95/94/18473129.jpg',
)
slimane.save!
puts 'Created Slimane !'

puts 'Creating John'
john = User.new(
  first_name: 'John',
  last_name: 'Rambo',
  address: 'Camp de prisonnier , Pleiku, Vietnam',
  email: 'john@gmail.com',
  password: 'johnrambo',
  photo_url: 'https://www.rts.ch/2019/09/18/12/34/10718588.image?w=1280&h=720',
)
john.save!
puts 'Created John !'

puts 'Creating Cetel'
cetel = User.new(
  first_name: 'Cetel',
  last_name: 'Em',
  address: 'Route des Buissons , Palavas-les-Flots, France',
  email: 'cetel@gmail.com',
  password: 'cetelem',
  photo_url: 'https://images.rtl.fr/~c/770v513/rtl/www/1179101-le-bonhomme-cetelem.jpg',
)
cetel.save!
puts 'Created Cetel !'
