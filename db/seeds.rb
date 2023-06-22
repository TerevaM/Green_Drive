# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

require 'faker'

Car.delete_all
puts "delete all cars"
User.delete_all
puts "delete all users"

rand_mail = ['gmail', 'yahoo', 'free']
5.times do
  first_name_user = Faker::Name.first_name
  last_name_user = Faker::Name.last_name
  new_user = User.new(email: "#{first_name_user}.#{last_name_user}@#{rand_mail.sample}.fr",
                      first_name: first_name_user,
                      last_name: last_name_user,
                      password: "#{first_name_user}#{last_name_user}123")
  new_user.save!
  rand(2..5).times do
    start_date = rand(0..31)
    end_date = start_date + rand(0..60)
    make_and_model = Faker::Vehicle.make_and_model.split
    color_name = Faker::Color.color_name
    car_new = Car.new(user: new_user,
                      model: make_and_model[0],
                      brand: make_and_model[1],
                      color: color_name,
                      year: Faker::Vehicle.year,
                      number_of_seats: rand(2..9),
                      description: Faker::Lorem.paragraphs(number: rand(2..4)),
                      start_date: Date.new + start_date,
                      end_date: Date.new + end_date,
                      rate: rand(45..130))
    # car_new.photo.attach(io: file, filename: , content_type: "image/png")
    car_new.save!
  end
end

users_account = []
5.times do
  rand_mail = ['gmail', 'yahoo', 'free']
  first_name_user = Faker::Name.first_name
  last_name_user = Faker::Name.last_name
  new_user = User.new(email: "#{first_name_user}.#{last_name_user}@#{rand_mail.sample}.fr",
                      first_name: first_name_user,
                      last_name: last_name_user,
                      password: "#{first_name_user}#{last_name_user}123")
  users_account << new_user
  new_user.save!
end
car_1 = Car.new(user: users_account.sample,
                model: ,
                brand: ,
                color: ,
                number_of_seats: ,
                description: ,
                start_date: ,
                end_date: ,
                rate: ,
                photo: )
car_1.save!
car_2 = Car.new(user: users_account.sample,
                model: ,
                brand: ,
                color: ,
                number_of_seats: ,
                description: ,
                start_date: ,
                end_date: ,
                rate: ,
                photo: )
car_2.save!
car_3 = Car.new(user: users_account.sample,
                model: ,
                brand: ,
                color: ,
                number_of_seats: ,
                description: ,
                start_date: ,
                end_date: ,
                rate: ,
                photo: )
car_3.save!
car_4 = Car.new(user: users_account.sample,
                model: ,
                brand: ,
                color: ,
                number_of_seats: ,
                description: ,
                start_date: ,
                end_date: ,
                rate: ,
                photo: )
car_4.save!
car_5 = Car.new(user: users_account.sample,
                model: ,
                brand: ,
                color: ,
                number_of_seats: ,
                description: ,
                start_date: ,
                end_date: ,
                rate: ,
                photo: )
car_5.save!
car_6 = Car.new(user: users_account.sample,
                model: ,
                brand: ,
                color: ,
                number_of_seats: ,
                description: ,
                start_date: ,
                end_date: ,
                rate: ,
                photo: )
car_6.save!
car_7 = Car.new(user: users_account.sample,
                model: ,
                brand: ,
                color: ,
                number_of_seats: ,
                description: ,
                start_date: ,
                end_date: ,
                rate: ,
                photo: )
car_7.save!
car_8 = Car.new(user: users_account.sample,
                model: ,
                brand: ,
                color: ,
                number_of_seats: ,
                description: ,
                start_date: ,
                end_date: ,
                rate: ,
                photo: )
car_8.save!
car_9 = Car.new(user: users_account.sample,
                model: ,
                brand: ,
                color: ,
                number_of_seats: ,
                description: ,
                start_date: ,
                end_date: ,
                rate: ,
                photo: )
car_9.save!
car_10 = Car.new(user: users_account.sample,
                model: ,
                brand: ,
                color: ,
                number_of_seats: ,
                description: ,
                start_date: ,
                end_date: ,
                rate: ,
                photo: )
car_10.save!

puts 'finished'
