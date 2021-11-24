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
  address: 'Rue de Lausanne 33, Renens, Suisse',
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
  address: 'Rue de Courcelles, Paris, France',
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
  address: 'Boulevard Carl-Vogt 55, Genève, Suisse',
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
  address: 'Place Rossetti , Nice, France',
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
  address: 'Grande Rue, 01350 CULOZ, France',
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
  address: '245 chem Eperon, 01160 SAINT MARTIN DU MONT, France',
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
  address: 'Route des Buissons , Palavas-les-Flots, France', # Garder palavas-les-flots si possible
  email: 'cetel@gmail.com',
  password: 'cetelem',
  photo_url: 'https://images.rtl.fr/~c/770v513/rtl/www/1179101-le-bonhomme-cetelem.jpg',
)
cetel.save!
puts 'Created Cetel !'

puts 'Creating TB 1'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662951/360_F_295136365_8FlBKW1zOvvoT13Uwa3NsJ2tiguWoIhn_si6eo5_cqvf4y.jpg')
toothbrush = Toothbrush.new(
  title: 'My lovely Toothbrush',
  condition: 'Acceptable',
  description: 'This is a very nice toothbrush that helped me a lot',
  brand: 'Fluodent',
  user: catherine,
  category: 'Vintage',
  price: 7
)
toothbrush.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush.save!
puts 'TB 1 created'


puts 'Creating TB 2'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662949/pexels-ricardo-rojas-3588229_bidqwm_vzqsja.jpg')
toothbrush = Toothbrush.new(
  title: 'A warrior Toothbrush',
  condition: 'As good as new',
  description: 'When I was fighting in Vietnam, this toothbrush saved my life more than once',
  brand: 'UncleSam',
  user: john,
  category: 'Vintage',
  price: 8
)
toothbrush.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush.save!
puts 'TB 2 created'

puts 'Creating TB 3'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662949/used-toothbrush_wzv3mh_swuhio.jpg')
toothbrush = Toothbrush.new(
  title: 'Great to brush bushes',
  condition: 'Poor',
  description: 'A toothbrush for a tree can only be good for human',
  brand: 'MyGreenLeaf',
  user: cetel,
  category: 'Manual',
  price: 3
)
toothbrush.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush.save!
puts 'TB 3 created'


puts 'Creating TB 4'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662949/used-toothbrush-science-photo-library_v7rd7e_tf9l6e.jpg')
toothbrush = Toothbrush.new(
  title: 'Professional Toothbrush',
  condition: 'Acceptable',
  description: 'The best one to brush the teeth of my chickens',
  brand: 'ChickenWithTeeth',
  user: slimane,
  category: 'Animals',
  price: 3
)
toothbrush.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush.save!
puts 'TB 4 created'

puts 'Creating TB 5'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662950/old_used_toothbrush_with_worn_out_bristles_g8lzpd_gnr709.webp')
toothbrush = Toothbrush.new(
  title: 'My go to Toothbrush',
  condition: 'Great',
  description: "Day and night I feel like I'm brushin' brushin' and brushin'",
  brand: 'Colgate',
  user: slimane,
  category: 'Rare',
  price: 12
)
toothbrush.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush.save!
puts 'TB 5 created'
