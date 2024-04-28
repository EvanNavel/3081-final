# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed Systems
nintendo_gamecube = System.create(name: "Nintendo GameCube", release_date: "2001-09-14", cost: 199.99, condition: "Complete")
playstation_2 = System.create(name: "PlayStation 2", release_date: "2000-03-04", cost: 299.99, condition: "Complete")
nintendo_ds = System.create(name: "Nintendo DS", release_date: "2004-11-21", cost: 149.99, condition: "Complete")
nintendo_64 = System.create(name: "Nintendo 64", release_date: "1996-09-29", cost: 199.99, condition: "Complete")
nintendo_wii = System.create(name: "Nintendo Wii", release_date: "2006-11-19", cost: 249.99, condition: "Complete")

# Seed Games
luigis_mansion = Game.create(title: "Luigi's Mansion", release_date: "2001-11-18", system: nintendo_gamecube, genre: "Adventure", cost: 59.99, manufacturer: "Nintendo", condition: "Sealed")
silent_hill_2 = Game.create(title: "Silent Hill 2", release_date: "2001-09-24", system: playstation_2, genre: "Horror", cost: 49.99, manufacturer: "Konami", condition: "Complete")
pokemon_black_2 = Game.create(title: "Pokemon Black 2", release_date: "2012-06-23", system: nintendo_ds, genre: "RPG", cost: 44.99, manufacturer: "Nintendo", condition: "Cartridge Only")
donkey_kong_64 = Game.create(title: "Donkey Kong 64", release_date: "1999-11-22", system: nintendo_64, genre: "Adventure", cost: 49.99, manufacturer: "Nintendo", condition: "Box Only")
gitaroo_man = Game.create(title: "Gitaroo Man", release_date: "2002-02-21", system: playstation_2, genre: "Rhythm", cost: 39.99, manufacturer: "Koei", condition: "Manual Only")
warioware_smooth_moves = Game.create(title: "WarioWare: Smooth Moves", release_date: "2007-01-15", system: nintendo_wii, genre: "Party", cost: 49.99, manufacturer: "Nintendo", condition: "Complete")
