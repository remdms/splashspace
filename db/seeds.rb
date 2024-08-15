# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

Booking.destroy_all

Pool.destroy_all
puts 'piscines détruits'

User.destroy_all
puts 'users bien détruits'

users = []
#   end
puts "creating user"
user1 = User.new(
  first_name: "Paul",
  last_name: "Pivet",
  pseudo: "PP7",
  email: "exemple1@gmail.com",
  password: "exemple1"
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723631883/Paul.jpg")

user1.photo.attach(io: file, filename: "Paul.jpg", content_type: "image/jpg")
user1.save
users << user1

user2 = User.new(
  first_name: "Jeanne",
  last_name: "Boulanger",
  pseudo: "Jeanne.B",
  email: "exemple2@gmail.com",
  password: "exemple2"
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723632002/Jeanne.jpg")

user2.photo.attach(io: file, filename: "Jeanne.jpg",content_type: "image/jpg")
user2.save
users << user2

user3 = User.new(
  first_name: "Marc",
  last_name: "Dupont",
  pseudo: "MarcDc",
  email: "exemple3@gmail.com",
  password: "exemple3"
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723631942/Marc.jpg")

user3.photo.attach(io: file, filename: "Marc.jpg",content_type: "image/jpg")
user3.save!
users << user3

user4 = User.new(
  first_name: "Sophie",
  last_name: "Leroy",
  pseudo: "SophieL",
  email: "exemple4@gmail.com",
  password: "exemple4"
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723632044/sophie.jpg")

user4.photo.attach(io: file, filename: "Sophie.jpg",content_type: "image/jpg")
user4.save!
users << user4

# user5 = User.create!(first_name: "Pierre", last_name: "Martin", pseudo: "PierreM", email: "exemple1@gmail.com", password: "exemple1")

# user6 = User.create!(first_name: "Julie", last_name: "Durand", pseudo: "JulieD", email: "julieD@gmail.com", password: "123456")

# user7 = User.create!(first_name: "Antoine", last_name: "Petit", pseudo: "AntoineP", email: "antoineP@gmail.com", password: "123456")

# user8 = User.create!(first_name: "Emma", last_name: "Girard", pseudo: "EmmaG", email: "emma-girard@gmail.com", password: "123456")

# user9 = User.create!(first_name: "Lucas", last_name: "Moreau", pseudo: "LucasM", email: "lulu83@gmail.com", password: "123456")

# user10 = User.create!(first_name: "Chloe", last_name: "Roux", pseudo: "ChloeR", email: "chloeR@gmail.com", password: "123456")

# user11 = User.create!(first_name: "Hugo", last_name: "Blanc", pseudo: "HugoB", email: "hugo.blanc@gmail.com", password: "123456")

# user12 = User.create!(first_name: "Camille", last_name: "Garcia", pseudo: "CamilleG", email: "garcia@gmail.com", password: "123456")
p User.all

puts "creating pool"
pool1 = Pool.new(
  name: "Crystal Lagoon Oasis",
  overview: "An expansive, crystal-clear lagoon-style pool surrounded by palm trees",
  pool_type: "Salt",
  address: "30 rue voisin, 92600 Asnières, France",
  price_per_day: 120,
  user_id: users.sample.id,
  area: 80
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723555107/Crystal_Lagoon_Oasis.jpg")

pool1.photo.attach(io: file, filename: "Crystal_Lagoon_Oasis.jpg", content_type: "image/jpg")
pool1.save!

pool2 = Pool.new(
  name: "Le Bleu Paradis",
  overview: "A tranquil, azure-blue pool nestled within a secluded garden", pool_type: "Chlorine",
  address: "12 Rue Jean Goujon, 75008 Paris, France",
  price_per_day: 90,
  user_id: users.sample.id,
  area: 30
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723555191/Le_Bleu_Paradis.jpg")

pool2.photo.attach(io: file, filename: "Le_Bleu_Paradis.jpg", content_type: "image/jpg")
pool2.save!

pool3 = Pool.new(
  name: "L'Étang Émeraude",
  overview: "A naturally-fed emerald lagoon pool.",
  pool_type: "Salt",
  address: "8 chemin des Lavandes, 13100 Aix-en-Provence, France",
  price_per_day: 160,
  user_id: users.sample.id,
  area: 36
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723557246/Etang_Emeraude.jpg")

pool3.photo.attach(io: file, filename: "Etang_Emeraude.jpg", content_type: "image/jpg")
pool3.save!

pool4 = Pool.new(
  name: "Les Bains d'Or",
  overview: "An opulent pool with golden mosaics and luxurious cabanas", pool_type: "Chlorine",
  address: "25 avenue des Champs-Élysées, 75008 Paris, France",
  price_per_day: 240,
  user_id: users.sample.id,
  area: 20
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723557583/Bains_Or.jpg")

pool4.photo.attach(io: file, filename: "Bains_Or.jpg", content_type: "image/jpg")
pool4.save!

pool5 = Pool.new(
  name: "Le Bassin de Saphir",
  overview: "A deep sapphire-colored pool with a minimalist design, offering panoramic views of the surrounding vineyards.",
  pool_type: "Ozone",
  address: "14 route des Vins, 67000 Strasbourg, France",
  price_per_day: 280,
  user_id: users.sample.id,
  area: 46
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723557766/Bassin_Saphir.jpg")

pool5.photo.attach(io: file, filename: "Bassin_Saphir.jpg", content_type: "image/jpg")
pool5.save!

pool6 = Pool.new(
  name: "Château de L'Eau",
  overview: "Set within the majestic vineyards of Bordeaux, this pool offers a serene escape with stunning views of rolling hills",
  pool_type: "Chlorine",
  address: "45 rue du Château, 33000 Bordeaux, France",
  price_per_day: 120,
  user_id: users.sample.id,
  area: 50
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723557955/Chateau_Eau.jpg")

pool6.photo.attach(io: file, filename: "Bassin_Saphir.jpg", content_type: "image/jpg")
pool6.save!

pool7 = Pool.new(
  name: "Palais Bleu",
  overview: "A tranquil oasis located in the heart of the French Riviera, surrounded by the glitz and glamour of Cannes.",
  pool_type: "Salt",
  address: "12 bd de la croisette, 06400 Cannes, France",
  price_per_day: 200,
  user_id: users.sample.id,
  area: 55
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723558127/Palais_Bleu.jpg")

pool7.photo.attach(io: file, filename: "Palais_Bleu.jpg", content_type: "image/jpg")
pool7.save!

pool8 = Pool.new(
  name: "Villa Émeraude",
  overview: "Nestled in the Provence countryside, this pool is surrounded by fragrant lavender fields and rolling vineyards.",
  pool_type: "Ozone",
  address: "22 Rue des Lavandes, 84000 Avignon, France",
  price_per_day: 130,
  user_id: users.sample.id,
  area: 35
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723558382/Villa_Emeraude.jpg")

pool8.photo.attach(io: file, filename: "Villa_Emeraude.jpg", content_type: "image/jpg")
pool8.save!

pool9 = Pool.new(
  name: "Horizon d'Azur",
  overview: "A luxurious infinity pool overlooking the Mediterranean Sea, perfect for those seeking a lavish escape on the Côte d'Azur",
  pool_type: "Salt",
  address: "10 Bd Dubouchage, 06000 Nice, France",
  price_per_day: 110,
  user_id: users.sample.id,
  area: 50
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723558549/Horizon_Azur.jpg")

pool9.photo.attach(io: file, filename: "Horizon_Azur.jpg", content_type: "image/jpg")
pool9.save!

pool10 = Pool.new(
  name: "Villa de Sol azurée",
  overview: "Perched on the cliffs of Corsica, offering panoramic views of the turquoise waters of the Mediterranean.",
  pool_type: "Chlorine",
  address: "Foce dell'Edera, 20169 Bonifacio, France", price_per_day: 85,
  user_id: users.sample.id,
  area: 60
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723558720/Villa_Sol_azuree.jpg")

pool10.photo.attach(io: file, filename: "Villa_Sol_azuree.jpg", content_type: "image/jpg")
pool10.save!

pool11 = Pool.new(
  name: "Oasis du Désert",
  overview: "An exotic retreat located in the heart of the Camargue, featuring a pool that mimics the natural oasis of the region",
  pool_type: "UV",
  address: "Route Du Petit-Rhône D38, 13460 Saintes-Maries-de-la-Mer, France",
  price_per_day: 110,
  user_id: users.sample.id,
  area: 60
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723558885/Oasis_Desert.jpg")

pool11.photo.attach(io: file, filename: "Oasis_Desert.jpg", content_type: "image/jpg")
pool11.save!

pool12 = Pool.new(
  name: "Crique Cachée",
  overview: "A secluded paradise surrounded by pine forests and hidden coves, offering a private and intimate experience on the Brittany coast", pool_type: "UV",
  address: "20 Rue du Kelenn, 29660 Carantec, France", price_per_day: 160,
  user_id: users.sample.id,
  area: 30
)
file = URI.open("https://res.cloudinary.com/dsxqbci59/image/upload/v1723559042/Crique_Cachee.jpg")

pool12.photo.attach(io: file, filename: "Crique_Cachee.jpg", content_type: "image/jpg")
pool12.save!

p Pool.all
