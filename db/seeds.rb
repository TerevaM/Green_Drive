# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Car.delete_all
puts "delete all cars"
User.delete_all
<<<<<<< HEAD
puts "delete all car"
=======
puts "delete all users"
>>>>>>> 6842f0a2cd69600501569bd530d7957a6c8411fc

puts 'finished'
