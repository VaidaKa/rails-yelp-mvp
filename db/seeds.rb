# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

restaurants = [
  { name: "The Ledbury", address: "127 Ledbury Rd, Notting Hill, London W11 2AQ, UK", phone_number: "+44 20 7792 9090", category: "french" },
  { name: "Dishoom", address: "12 Upper St Martin's Ln, London WC2H 9FB, UK", phone_number: "+44 20 7420 9320", category: "japanese" },
  { name: "Pizza Pilgrims", address: "11 Dean St, Soho, London W1D 3RP, UK", phone_number: "+44 20 7287 8964", category: "italian" },
  { name: "A. Wong", address: "70 Wilton Rd, Pimlico, London SW1V 1DE, UK", phone_number: "+44 20 7828 8931", category: "chinese" },
  { name: "Belgo Centraal", address: "50 Earlham St, London WC2H 9LJ, UK", phone_number: "+44 20 7813 2233", category: "belgian" }
]

restaurants.each do |attributes|
  Restaurant.create!(attributes)
end

puts "Seeded #{Restaurant.count} restaurants."
