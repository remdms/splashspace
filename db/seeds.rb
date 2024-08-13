# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

User.destroy_all
puts 'users bien détruits'

Pool.destroy_all
puts 'piscines détruits'
#   end
puts "creating user"
User.create!(first_name: "Paul", last_name: "Pivet", pseudo: "PP7", email: "ppivet7@gmail.com", password: "123456")

user2 = User.create!(first_name: "Jeanne", last_name: "Boulanger", pseudo: "Jeanne.B", email: "jb92@gmail.com", password: "123456")

user3 = User.create!(first_name: "Marc", last_name: "Dupont", pseudo: "MarcDc", email: "marcd@gmail.com", password: "123456")

user4 = User.create!(first_name: "Sophie", last_name: "Leroy", pseudo: "SophieL", email: "sosol@gmail.com", password: "123456")

user5 = User.create!(first_name: "Pierre", last_name: "Martin", pseudo: "PierreM", email: "pierre.m@gmail.com", password: "123456")

user6 = User.create!(first_name: "Julie", last_name: "Durand", pseudo: "JulieD", email: "julieD@gmail.com", password: "123456")

user7 = User.create!(first_name: "Antoine", last_name: "Petit", pseudo: "AntoineP", email: "antoineP@gmail.com", password: "123456")

user8 = User.create!(first_name: "Emma", last_name: "Girard", pseudo: "EmmaG", email: "emma-girard@gmail.com", password: "123456")

user9 = User.create!(first_name: "Lucas", last_name: "Moreau", pseudo: "LucasM", email: "lulu83@gmail.com", password: "123456")

user10 = User.create!(first_name: "Chloe", last_name: "Roux", pseudo: "ChloeR", email: "chloeR@gmail.com", password: "123456")

user11 = User.create!(first_name: "Hugo", last_name: "Blanc", pseudo: "HugoB", email: "hugo.blanc@gmail.com", password: "123456")

user12 = User.create!(first_name: "Camille", last_name: "Garcia", pseudo: "CamilleG", email: "garcia@gmail.com", password: "123456")

puts "creating pool"
Pool.create(name: "Crystal Lagoon Oasis", overview: "An expansive, crystal-clear lagoon-style pool surrounded by palm trees", pool_type: "Salt", address: "30 rue voisin, 92600 Asnières, France", price_per_day: 120, user_id: 1)

Pool.create(name: "Le Bleu Paradis", overview: "A tranquil, azure-blue pool nestled within a secluded garden", pool_type: "Chlorine", address: "12 rue de la Mer, 75008 Paris, France", price_per_day: 90, user_id: 2)

Pool.create(name: "L'Étang Émeraude", overview: "A naturally-fed emerald lagoon pool.", pool_type: "Salt", address: "8 chemin des Lavandes, 13100 Aix-en-Provence, France", price_per_day: 160, user_id: 3)

Pool.create(name: "Les Bains d'Or", overview: "An opulent pool with golden mosaics and luxurious cabanas", pool_type: "Chlorine", address: "25 avenue des Champs-Élysées, 75008 Paris, France", price_per_day: 240, user_id: 4)

Pool.create(name: "Le Bassin de Saphir", overview: "A deep sapphire-colored pool with a minimalist design, offering panoramic views of the surrounding vineyards.", pool_type: "Ozone", address: "14 route des Vins, 67000 Strasbourg, France", price_per_day: 280, user_id: 5)

Pool.create(name: "Château de L'Eau", overview: "Set within the majestic vineyards of Bordeaux, this pool offers a serene escape with stunning views of rolling hills", pool_type: "Chlorine", address: "45 rue du Château, 33000 Bordeaux, France", price_per_day: 120, user_id: 6)

Pool.create(name: "Palais Bleu", overview: "A tranquil oasis located in the heart of the French Riviera, surrounded by the glitz and glamour of Cannes.", pool_type: "Salt", address: "12 avenue de la Croisette, 06400 Cannes, France", price_per_day: 200, user_id: 7)

Pool.create(name: "Villa Émeraude", overview: "Nestled in the Provence countryside, this pool is surrounded by fragrant lavender fields and rolling vineyards.", pool_type: "Ozone", address: "22 chemin des Lavandes, 84000 Avignon, France", price_per_day: 130, user_id: 8)

Pool.create(name: "Horizon d'Azur", overview: "A luxurious infinity pool overlooking the Mediterranean Sea, perfect for those seeking a lavish escape on the Côte d'Azur", pool_type: "Salt", address: "10 boulevard de la Croisette, 06000 Nice, France", price_per_day: 110, user_id: 9)

Pool.create(name: "Villa de Sol azurée", overview: "Perched on the cliffs of Corsica, offering panoramic views of the turquoise waters of the Mediterranean.", pool_type: "Chlorine", address: "118 rue de la Mer, 20100 Bonifacio, Corsica, France", price_per_day: 85, user_id: 10)

Pool.create(name: "Oasis du Désert", overview: "An exotic retreat located in the heart of the Camargue, featuring a pool that mimics the natural oasis of the region", pool_type: "UV", address: "25 route de l’Oasis, 13460 Les Saintes-Maries-de-la-Mer, France", price_per_day: 110, user_id: 11)

Pool.create(name: "Crique Cachée", overview: "A secluded paradise surrounded by pine forests and hidden coves, offering a private and intimate experience on the Brittany coast", pool_type: "UV", address: "5 rue des Goélands, 29660 Carantec, Brittany, France", price_per_day: 160, user_id: 12)
