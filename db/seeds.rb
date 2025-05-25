# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# User.create!(
#   email: 'admin@example.com',
#   password: 'password123',
#   password_confirmation: 'password123'
# )

# puts "Created user: admin@example.com / password123"

puts "Creating users..."
User.destroy_all
User.create!(email: "admin@example.com", password: "password", password_confirmation: "password")
User.create!(email: "user@example.com", password: "password", password_confirmation: "password")
puts "Users created."

puts "Clearing old players and matches..."
Match.destroy_all
Player.destroy_all

puts "Creating players..."
players = []
players << Player.create!(name: "Alice")
players << Player.create!(name: "Bob")
players << Player.create!(name: "Charlie")
players << Player.create!(name: "Diana")
players << Player.create!(name: "Eve")
puts "#{players.count} players created."

puts "Creating matches..."
Match.create!(
  winner_id: players[0].id,  # Alice won
  loser_id: players[1].id    # Bob lost
)

Match.create!(
  winner_id: players[3].id,  # Diana won
  loser_id: players[2].id    # Charlie lost
)

Match.create!(
  winner_id: players[0].id,  # Alice won again
  loser_id: players[4].id    # Eve lost
)

puts "Matches created."
