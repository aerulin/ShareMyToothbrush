require 'faker'


# User Creation
puts "Cleaning Booking database..."
Booking.destroy_all
puts "Cleaning User database..."
User.destroy_all
puts "All users deleted"
puts "Cleaning Toothbrushes database..."
Toothbrush.destroy_all

toothbrush_array = []
user_array = []

puts 'Creating Catherine'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637845501/catherine_ojcqm0.jpg')
catherine = User.new(
  first_name: 'Catherine',
  last_name: 'Leduc',
  address: 'Rue de Lausanne 33, Renens, Suisse',
  email: 'catherine@gmail.com',
  password: 'catherine',
)
catherine.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
catherine.save!
user_array << catherine
puts 'Created Catherine !'

puts 'Creating Jacques'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637845642/jacques_xya10w.jpg')
jacques = User.new(
  first_name: 'Jacques',
  last_name: 'Chichi',
  address: 'Rue de la Berra 22, Bulle, Suisse',
  email: 'jacques@gmail.com',
  password: 'jacques',
)
jacques.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
jacques.save!
user_array << jacques
puts 'Created Jacques !'

  puts 'Creating Antoine'
  file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637845829/antoine_duphmo.jpg')
antoine = User.new(
  first_name: 'Antoine',
  last_name: 'Leblond',
  address: 'Boulevard Carl-Vogt 55, Genève, Suisse',
  email: 'antoine@gmail.com',
  password: 'antoine',
)
antoine.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
antoine.save!
user_array << antoine
puts 'Created Antoine !'

puts 'Creating Patrick'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637845901/patrick_cwkajv.jpg')
patrick = User.new(
  first_name: 'Patrick',
  last_name: 'Konattendpas',
  address: 'Masseret, 19510 MASSERET, France',
  email: 'patrick@gmail.com',
  password: 'patrick',
)
patrick.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
patrick.save!
user_array << patrick
puts 'Created Patrick !'

puts 'Creating Slimane'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637845949/slimane_dxihjw.jpg')
slimane = User.new(
  first_name: 'Slimane',
  last_name: 'Pillierdelascep',
  address: 'Grande Rue, 01350 CULOZ, France',
  email: 'slimane@gmail.com',
  password: 'slimane',
)
slimane.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
slimane.save!
user_array << slimane
puts 'Created Slimane !'

puts 'Creating John'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637846025/john_dr2143.png')
john = User.new(
  first_name: 'John',
  last_name: 'Rambo',
  address: '11 av Gabriel Reynaud, 13330 PÉLISSANNE, France',
  email: 'john@gmail.com',
  password: 'johnrambo',
)
john.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
john.save!
user_array << john
puts 'Created John !'

puts 'Creating Cetel'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637846119/surchat_vcwej2.jpg')
cetel = User.new(
  first_name: 'Cetel',
  last_name: 'Em',
  address: '48 Rue Melgueil, 34250 Palavas-les-Flots, France', # Garder palavas-les-flots si possible
  email: 'cetel@gmail.com',
  password: 'cetelem',
)
cetel.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
cetel.save!
user_array << cetel
puts 'Created Cetel !'

puts 'Creating Manu'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637919368/macron_sefgml.jpg')
manu = User.new(
  first_name: 'Manu',
  last_name: 'Mescrons',
  address: '55 Rue du Faubourg Saint-Honoré, 75008 Paris, France', # Garder palavas-les-flots si possible
  email: 'manu@gmail.com',
  password: 'manumecrons',
)
manu.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
manu.save!
user_array << manu
puts 'Created Manu !'

puts 'Creating Albert'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637919368/einstein_o0lwfo.jpg')
albert = User.new(
  first_name: 'Albert',
  last_name: 'Twostein',
  address: 'Kramgasse 49, 3011 Bern, Switzerland', # Garder palavas-les-flots si possible
  email: 'albert@gmail.com',
  password: 'alberttwostein',
)
albert.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
albert.save!
user_array << albert
puts 'Created albert !'

puts 'Creating Lewis'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637919368/hamilton_ykiivz.jpg')
lewis = User.new(
  first_name: 'Lewis',
  last_name: 'Lapleureuse',
  address: '31 Rue du Général Leclerc, 51230 Pleurs, France', # Garder palavas-les-flots si possible
  email: 'lewis@gmail.com',
  password: 'lewislapleureuse',
)
lewis.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
lewis.save!
user_array << lewis
puts 'Created Lewis !'

puts 'Creating TB 1'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662951/360_F_295136365_8FlBKW1zOvvoT13Uwa3NsJ2tiguWoIhn_si6eo5_cqvf4y.jpg')
toothbrush1 = Toothbrush.new(
  title: 'My lovely Toothbrush',
  description: 'This is a very nice toothbrush that helped me a lot',
  brand: 'Fluodent',
  user: catherine,
  condition: 'Used',
  category: 'Vintage',
  price: 7
)
toothbrush1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush1.save!
toothbrush_array << toothbrush1
puts 'TB 1 created'


puts 'Creating TB 2'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662949/pexels-ricardo-rojas-3588229_bidqwm_vzqsja.jpg')
toothbrush2 = Toothbrush.new(
  title: 'A warrior Toothbrush',
  description: 'When I was fighting in Vietnam, this toothbrush saved my life more than once',
  brand: 'UncleSam',
  user: john,
  condition: 'End of life',
  category: 'Eco-friendly',
  price: 8
)
toothbrush2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush2.save!
toothbrush_array << toothbrush2
puts 'TB 2 created'

puts 'Creating TB 3'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662949/used-toothbrush_wzv3mh_swuhio.jpg')
toothbrush3 = Toothbrush.new(
  title: 'Great to brush bushes',
  description: 'A toothbrush for a tree can only be good for human',
  brand: 'MyGreenLeaf',
  user: cetel,
  condition: 'Bad',
  category: 'Famous',
  price: 3
)
toothbrush3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush3.save!
toothbrush_array << toothbrush3
puts 'TB 3 created'


puts 'Creating TB 4'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662949/used-toothbrush-science-photo-library_v7rd7e_tf9l6e.jpg')
toothbrush4 = Toothbrush.new(
  title: 'Professional Toothbrush',
  description: 'The best one to brush the teeth of my chickens',
  brand: 'ChickenWithTeeth',
  user: slimane,
  condition: 'Used',
  category: 'Famous',
  price: 3
)
toothbrush4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush4.save!
toothbrush_array << toothbrush4
puts 'TB 4 created'

puts 'Creating TB 5'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637662950/old_used_toothbrush_with_worn_out_bristles_g8lzpd_gnr709.webp')
toothbrush5 = Toothbrush.new(
  title: 'My go-to Toothbrush that I love',
  description: "Day and night I feel like I'm brushin' brushin' and brushin'",
  brand: 'Colgate',
  user: slimane,
  condition: 'New',
  category: 'Plastic',
  price: 12
)
toothbrush5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush5.save!
toothbrush_array << toothbrush5
puts 'TB 5 created'

puts 'Creating TB 6'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637919140/brosse3_pmzfox.jpg')
toothbrush6 = Toothbrush.new(
  title: 'Camping Toothbrush',
  description: "Perfect to prepare for the annual Karoke night! Go for the Win!",
  brand: 'Dentlux',
  user: patrick,
  condition: 'Used',
  category: 'Plastic',
  price: 4
)
toothbrush6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush6.save!
toothbrush_array << toothbrush6
puts 'TB 6 created'

puts 'Creating TB 7'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637919140/brosse2_znp7ye.jpg')
toothbrush7 = Toothbrush.new(
  title: 'Survivalist defense toothbrush',
  description: "Stuck in a fight? Be a lion ready to attack with this electric weapon",
  brand: 'Dentlux',
  user: john,
  condition: 'Used',
  category: 'Electric',
  price: 4
)
toothbrush7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush7.save!
toothbrush_array << toothbrush7
puts 'TB 7 created'

puts 'Creating TB 8'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637919140/brosse5_sdnjew.jpg')
toothbrush8 = Toothbrush.new(
  title: 'A Toothbrush to cry on',
  description: "You want to be a sore looser? Hey, it's your chance. Rent my Toothbrush today and cry everyday.",
  brand: 'Mercredez',
  user: lewis,
  condition: 'End of life',
  category: 'Famous',
  price: 13
)
toothbrush8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush8.save!
toothbrush_array << toothbrush8
puts 'TB 8 created'

puts 'Creating TB 9'
file = URI.open('https://res.cloudinary.com/dg2an4buq/image/upload/v1637919140/brosse4_yqpzsr.jpg')
toothbrush9 = Toothbrush.new(
  title: 'A new brain in a Toothbrush',
  description: "Some say eating the heart of your enemy gives you his strenght. Eat my toothbrush and share my brain",
  brand: 'Nobel',
  user: albert,
  condition: 'End of life',
  category: 'Famous',
  price: 7
)
toothbrush9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
toothbrush9.save!
toothbrush_array << toothbrush9
puts 'TB 9 created'

puts 'Create bookings'
40.times do
  startdate = rand(10.years).seconds.ago
  enddate = startdate + rand(4)*3600*24
  booking = Booking.new(
    start_date: startdate,
    end_date: enddate,
    toothbrush: toothbrush_array.sample,
    user: user_array.sample,
    status: ["⏳ pending", "⏳ pending", "⏳ pending", "✔️ confirmed", "⤫ declined", "⤫ cancelled"].sample
  )
  booking.save!
end
puts 'Success bookings creation. Enjoy!'
