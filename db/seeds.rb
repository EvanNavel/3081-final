# Seed Systems
nintendo_gamecube = System.find_or_create_by!(name: "Nintendo GameCube") do |system|
  system.release_date = Date.new(2001, 9, 14)
  system.cost = 199.99
  system.condition = "Complete"
end

playstation_2 = System.find_or_create_by!(name: "PlayStation 2") do |system|
  system.release_date = Date.new(2000, 3, 4)
  system.cost = 299.99
  system.condition = "Complete"
end

nintendo_ds = System.find_or_create_by!(name: "Nintendo DS") do |system|
  system.release_date = Date.new(2004, 11, 21)
  system.cost = 149.99
  system.condition = "Complete"
end

nintendo_64 = System.find_or_create_by!(name: "Nintendo 64") do |system|
  system.release_date = Date.new(1996, 9, 29)
  system.cost = 199.99
  system.condition = "Complete"
end

nintendo_wii = System.find_or_create_by!(name: "Nintendo Wii") do |system|
  system.release_date = Date.new(2006, 11, 19)
  system.cost = 249.99
  system.condition = "Complete"
end

# Seed Games
luigis_mansion = Game.create!(title: "Luigi's Mansion", release_date: Date.new(2001, 11, 18), system: nintendo_gamecube, genre: "Adventure", cost: 59.99, manufacturer: "Nintendo", condition: "Sealed")
silent_hill_2 = Game.create!(title: "Silent Hill 2", release_date: Date.new(2001, 9, 24), system: playstation_2, genre: "Horror", cost: 49.99, manufacturer: "Konami", condition: "Complete")
pokemon_black_2 = Game.create!(title: "Pokemon Black 2", release_date: Date.new(2012, 6, 23), system: nintendo_ds, genre: "RPG", cost: 44.99, manufacturer: "Nintendo", condition: "Cartridge/Disc Only")
donkey_kong_64 = Game.create!(title: "Donkey Kong 64", release_date: Date.new(1999, 11, 22), system: nintendo_64, genre: "Adventure", cost: 49.99, manufacturer: "Nintendo", condition: "Box Only")
gitaroo_man = Game.create!(title: "Gitaroo Man", release_date: Date.new(2002, 2, 21), system: playstation_2, genre: "Rhythm", cost: 39.99, manufacturer: "Koei", condition: "Manual Only")
warioware_smooth_moves = Game.create!(title: "WarioWare: Smooth Moves", release_date: Date.new(2007, 1, 15), system: nintendo_wii, genre: "Party", cost: 49.99, manufacturer: "Nintendo", condition: "Complete")

puts "#{System.count} systems created."
puts "#{Game.count} games created."
