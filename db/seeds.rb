# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Limpiando base de datos...'

Restaurant.destroy_all

puts 'Creando restaurantes....'
Restaurant.create(name: "Epicure", address: "75008 Paris", phone_number: "0123456789", category: "french")
Restaurant.create(name: "Café Tortoni", address: "Av. de Mayo 825, Buenos Aires", phone_number: "011-4342-4328", category: "chinese")
Restaurant.create(name: "El Cuartito", address: "Talcahuano 937, Buenos Aires", phone_number: "011-4816-1758", category: "italian")
Restaurant.create(name: "Bar El Federal", address: "Carlos Calvo 599, Buenos Aires", phone_number: "011-4300-4313", category: "japanese")
Restaurant.create(name: "El Gaucho Parrilla", address: "Av. Corrientes 1234, Buenos Aires", phone_number: "011-4567-8901", category: "belgian")

puts 'Terminamos de cargar los restaurantes'