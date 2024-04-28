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

# Define possible game conditions for random selection
game_conditions = ['Sealed', 'Complete', 'Box Only', 'Manual Only', 'Cartridge/Disc Only']

# Seed Games
games_data = [
  { title: "Luigi's Mansion", release_date: Date.new(2001, 11, 18), system: nintendo_gamecube, genre: "Adventure", cost: 59.99, manufacturer: "Nintendo" },
  { title: "Silent Hill 2", release_date: Date.new(2001, 9, 24), system: playstation_2, genre: "Horror", cost: 49.99, manufacturer: "Konami" },
  { title: "Pokemon Black 2", release_date: Date.new(2012, 6, 23), system: nintendo_ds, genre: "RPG", cost: 44.99, manufacturer: "Nintendo" },
  { title: "Donkey Kong 64", release_date: Date.new(1999, 11, 22), system: nintendo_64, genre: "Adventure", cost: 49.99, manufacturer: "Nintendo" },
  { title: "Gitaroo Man", release_date: Date.new(2002, 2, 21), system: playstation_2, genre: "Rhythm", cost: 39.99, manufacturer: "Koei" },
  { title: "WarioWare: Smooth Moves", release_date: Date.new(2007, 1, 15), system: nintendo_wii, genre: "Party", cost: 49.99, manufacturer: "Nintendo" },
  { title: "Metroid Prime", release_date: Date.new(2002, 11, 18), system: nintendo_gamecube, genre: "Action", cost: 50.99, manufacturer: "Nintendo" },
  { title: "Resident Evil 4", release_date: Date.new(2005, 1, 11), system: nintendo_gamecube, genre: "Horror", cost: 55.99, manufacturer: "Capcom" },
  { title: "Final Fantasy X", release_date: Date.new(2001, 7, 19), system: playstation_2, genre: "RPG", cost: 45.99, manufacturer: "Square Enix" },
  { title: "Shadow of the Colossus", release_date: Date.new(2005, 10, 18), system: playstation_2, genre: "Adventure", cost: 40.99, manufacturer: "Sony" },
  { title: "Mario Kart DS", release_date: Date.new(2005, 11, 14), system: nintendo_ds, genre: "Racing", cost: 35.99, manufacturer: "Nintendo" },
  { title: "The Legend of Zelda: Ocarina of Time", release_date: Date.new(1998, 11, 21), system: nintendo_64, genre: "Adventure", cost: 69.99, manufacturer: "Nintendo" },
  { title: "Super Smash Bros. Brawl", release_date: Date.new(2008, 3, 9), system: nintendo_wii, genre: "Fighting", cost: 59.99, manufacturer: "Nintendo" },
  { title: "Paper Mario: The Thousand-Year Door", release_date: Date.new(2004, 7, 22), system: nintendo_gamecube, genre: "RPG", cost: 65.99, manufacturer: "Nintendo" },
  { title: "Gran Turismo 4", release_date: Date.new(2004, 12, 28), system: playstation_2, genre: "Racing", cost: 55.99, manufacturer: "Sony" },
  { title: "Banjo-Kazooie", release_date: Date.new(1998, 6, 29), system: nintendo_64, genre: "Platform", cost: 49.99, manufacturer: "Rare" },
  { title: "Super Mario Sunshine", release_date: Date.new(2002, 8, 26), system: nintendo_gamecube, genre: "Platform", cost: 49.99, manufacturer: "Nintendo" },
  { title: "Kingdom Hearts", release_date: Date.new(2002, 3, 28), system: playstation_2, genre: "Action RPG", cost: 49.99, manufacturer: "Square Enix" },
  { title: "Animal Crossing: Wild World", release_date: Date.new(2005, 11, 23), system: nintendo_ds, genre: "Simulation", cost: 39.99, manufacturer: "Nintendo" },
  { title: "The Legend of Zelda: The Wind Waker", release_date: Date.new(2002, 12, 13), system: nintendo_gamecube, genre: "Adventure", cost: 59.99, manufacturer: "Nintendo" },
  { title: "Grand Theft Auto: San Andreas", release_date: Date.new(2004, 10, 26), system: playstation_2, genre: "Action-Adventure", cost: 49.99, manufacturer: "Rockstar Games" },
  { title: "New Super Mario Bros.", release_date: Date.new(2006, 5, 15), system: nintendo_ds, genre: "Platform", cost: 34.99, manufacturer: "Nintendo" },
  { title: "Super Mario 64", release_date: Date.new(1996, 6, 23), system: nintendo_64, genre: "Platform", cost: 59.99, manufacturer: "Nintendo" },
  { title: "Metal Gear Solid 2: Sons of Liberty", release_date: Date.new(2001, 11, 12), system: playstation_2, genre: "Action-Adventure", cost: 49.99, manufacturer: "Konami" },
  { title: "The Legend of Zelda: Majora's Mask", release_date: Date.new(2000, 4, 27), system: nintendo_64, genre: "Adventure", cost: 59.99, manufacturer: "Nintendo" },
  { title: "Kingdom Hearts II", release_date: Date.new(2005, 12, 22), system: playstation_2, genre: "Action RPG", cost: 49.99, manufacturer: "Square Enix" },
  { title: "Animal Crossing", release_date: Date.new(2001, 4, 14), system: nintendo_gamecube, genre: "Simulation", cost: 49.99, manufacturer: "Nintendo" },
  { title: "Mario Kart: Double Dash!!", release_date: Date.new(2003, 11, 7), system: nintendo_gamecube, genre: "Racing", cost: 49.99, manufacturer: "Nintendo" },
  { title: "Final Fantasy XII", release_date: Date.new(2006, 3, 16), system: playstation_2, genre: "RPG", cost: 49.99, manufacturer: "Square Enix" },
  { title: "Mario Party 8", release_date: Date.new(2007, 5, 29), system: nintendo_wii, genre: "Party", cost: 49.99, manufacturer: "Nintendo" },
]

games_data.each do |game|
  Game.create!(title: game[:title], release_date: game[:release_date], system: game[:system], genre: game[:genre], cost: game[:cost], manufacturer: game[:manufacturer], condition: game_conditions.sample)
end

puts "#{System.count} systems created."
puts "#{Game.count} games created."
