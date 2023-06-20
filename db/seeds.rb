# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Car.delete_all
User.delete_all
puts "delete all car"

5.times do
  new_user = User.new(email: Faker::Internet.email, password: 'motdepasse')
  new_user.save!
  rand(2..5).times do
    car = Faker::Vehicle.make_and_model
    new_car = Car.new(model: car,
                      user: new_user,
                      availability: 'date de disponible',
                      brand: Faker::Vehicle.manufacture,
                      description: Faker::Lorem.paragraph,
                      image_url: Faker::LoremFlickr.image( search_terms: ['voiture', car.delete(' ')]))
    new_car.save!
  end
end

puts 'finished'
