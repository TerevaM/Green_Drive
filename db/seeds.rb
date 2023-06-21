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
puts "delete all users"

rand_mail = ['gmail', 'yahoo', 'free']
5.times do
  first_name_user = Faker::Name.first_name
  last_name_user = Faker::Name.last_name
  new_user = User.new(email: "#{first_name}.#{last_name}@#{rand_mail.sample}.fr",
                      first_name: first_name_user,
                      last_name: last_name_user,
                      password: 'motdepasse')
  new_user.save!
  rand(2..5).times do
    start_date = rand(0..31)
    end_date = start_date + rand(0..60)
    make_and_model = Faker::Vehicle.make_and_model.split
    color_name = Faker::Color.color_name
    car_pic = Faker::LoremFlickr.image(size: "1920x1080",
                                       search_terms: ['cars', make_and_model[0], make_and_model[1], color_name])
    new_car = Car.new(model: make_and_model[0],
                      brand: make_and_model[1],
                      color: color_name,
                      year: Faker::Vehicle.year,
                      number_of_seats: rand(2..9),
                      description: Faker::Lorem.paragraphs(number: rand(2..4)),
                      start_date: Date.now + start_date,
                      end_date: Date.now + end_date,
                      rate: rand(45..130),
                      photo: Cloudinary::Uploader.upload(car_pic))
    new_car.save!
  end
end

puts 'finished'
