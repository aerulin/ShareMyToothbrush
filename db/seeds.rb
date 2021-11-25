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
puts "Cleaning Booking database..."
Booking.destroy_all
puts "Cleaning User database..."
User.destroy_all
puts "All users deleted"
puts "Cleaning Toothbrushes database..."
Toothbrush.destroy_all

puts 'Creating Catherine'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637845501/catherine_ojcqm0.jpg')
catherine = User.new(
  first_name: 'Catherine',
  last_name: 'Leduc',
  address: 'Rue de Lausanne 33, Renens, Suisse',
  email: 'catherine@gmail.com',
  password: 'catherine',
  photo_url: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
)
catherine.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
catherine.save!
puts 'Created Catherine !'

puts 'Creating Jacques'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637845642/jacques_xya10w.jpg')
jacques = User.new(
  first_name: 'Jacques',
  last_name: 'Chichi',
  address: 'Rue de la Berra 22, Bulle, Suisse',
  email: 'jacques@gmail.com',
  password: 'jacques',
  photo_url: 'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
)
jacques.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
jacques.save!
puts 'Created Jacques !'

  puts 'Creating Antoine'
  file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637845829/antoine_duphmo.jpg')
antoine = User.new(
  first_name: 'Antoine',
  last_name: 'Leblond',
  address: 'Boulevard Carl-Vogt 55, Genève, Suisse',
  email: 'antoine@gmail.com',
  password: 'antoine',
  photo_url: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
)
antoine.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
antoine.save!
puts 'Created Antoine !'

puts 'Creating Patrick'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637845901/patrick_cwkajv.jpg')
patrick = User.new(
  first_name: 'Patrick',
  last_name: 'Konattendpas',
  address: 'Masseret, 19510 MASSERET, France',
  email: 'patrick@gmail.com',
  password: 'patrick',
  photo_url: 'https://arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/WDSEQZ3E27V37MKMD5GZ5XSV4U.jpg',
)
patrick.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
patrick.save!
puts 'Created Patrick !'

puts 'Creating Slimane'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637845949/slimane_dxihjw.jpg')
slimane = User.new(
  first_name: 'Slimane',
  last_name: 'Pillierdelascep',
  address: 'Grande Rue, 01350 CULOZ, France',
  email: 'slimane@gmail.com',
  password: 'slimane',
  photo_url: 'https://fr.web.img3.acsta.net/medias/nmedia/18/35/95/94/18473129.jpg',
)
slimane.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
slimane.save!
puts 'Created Slimane !'

puts 'Creating John'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637846025/john_dr2143.png')
john = User.new(
  first_name: 'John',
  last_name: 'Rambo',
  address: '11 av Gabriel Reynaud, 13330 PÉLISSANNE, France',
  email: 'john@gmail.com',
  password: 'johnrambo',
  photo_url: 'https://www.rts.ch/2019/09/18/12/34/10718588.image?w=1280&h=720',
)
john.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
john.save!
puts 'Created John !'

puts 'Creating Cetel'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637846119/surchat_vcwej2.jpg')
cetel = User.new(
  first_name: 'Cetel',
  last_name: 'Em',
  address: '48 Rue Melgueil, 34250 Palavas-les-Flots, France', # Garder palavas-les-flots si possible
  email: 'cetel@gmail.com',
  password: 'cetelem',
  photo_url: 'https://images.rtl.fr/~c/770v513/rtl/www/1179101-le-bonhomme-cetelem.jpg',
)
cetel.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
cetel.save!
puts 'Created Cetel !'

puts 'Creating TB 1'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662951/360_F_295136365_8FlBKW1zOvvoT13Uwa3NsJ2tiguWoIhn_si6eo5_cqvf4y.jpg')
toothbrush = Toothbrush.new(
  title: 'My lovely Toothbrush',
  description: 'This is a very nice toothbrush that helped me a lot',
  brand: 'Fluodent',
  user: catherine,
  condition: 'Used',
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
  description: 'When I was fighting in Vietnam, this toothbrush saved my life more than once',
  brand: 'UncleSam',
  user: john,
  condition: 'End of life',
  category: 'Eco-friendly',
  price: 8
)
toothbrush.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush.save!
puts 'TB 2 created'

puts 'Creating TB 3'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662949/used-toothbrush_wzv3mh_swuhio.jpg')
toothbrush = Toothbrush.new(
  title: 'Great to brush bushes',
  description: 'A toothbrush for a tree can only be good for human',
  brand: 'MyGreenLeaf',
  user: cetel,
  condition: 'Bad',
  category: 'Famous',
  price: 3
)
toothbrush.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush.save!
puts 'TB 3 created'


puts 'Creating TB 4'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662949/used-toothbrush-science-photo-library_v7rd7e_tf9l6e.jpg')
toothbrush = Toothbrush.new(
  title: 'Professional Toothbrush',
  description: 'The best one to brush the teeth of my chickens',
  brand: 'ChickenWithTeeth',
  user: slimane,
  condition: 'Used',
  category: 'Famous',
  price: 3
)
toothbrush.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush.save!
puts 'TB 4 created'

puts 'Creating TB 5'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662950/old_used_toothbrush_with_worn_out_bristles_g8lzpd_gnr709.webp')
toothbrush = Toothbrush.new(
  title: 'My go-to Toothbrush that I love',
  description: "Day and night I feel like I'm brushin' brushin' and brushin'",
  brand: 'Colgate',
  user: slimane,
  condition: 'New',
  category: 'Plastic',
  price: 12
)
toothbrush.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush.save!
puts 'TB 5 created'
