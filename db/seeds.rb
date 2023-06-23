# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
require "date"

require 'faker'

Car.delete_all
puts "delete all cars"
User.delete_all
puts "delete all users"

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
puts "Created 5 users"
car_1 = Car.new(user: users_account.sample,
                model: "e-Niro",
                brand: "Kia",
                color: "Grise",
                number_of_seats: 5,
                year: 2022,
                location: "Marseille",
                description: "Notre E-niro est une voiture idéal et confortable pour les grands trajets .
                Vous pourrez charger sur une prise normale ou sur une borne
                La voiture sera livrée chargée a 100% !",
                start_date: Date.new(2023,6,25) ,
                end_date: Date.new(2023,7,25) ,
                rate: 90)
car_1.photos.attach(io: File.open('app/assets/images/kia-e-niro.jpg'), filename: "kia-e-niro")
car_1.save!
car_2 = Car.new(user: users_account.sample,
                model: "Ami",
                brand: "Citroën",
                color: "Bleue",
                location: "Marseille",
                year: 2020,
                number_of_seats: 2,
                description: "Super agréable et pratique pour se garer - 5000kms au compteur - Climatisation - Régulateur de vitesse",
                start_date: Date.new(2023,6,25) ,
                end_date: Date.new(2023,7,25),
                rate: 60)
car_2.photos.attach(io: File.open('app/assets/images/citroen-ami.jpg'), filename: "citroen-ami.jpg")
car_2.photos.attach(io: File.open('app/assets/images/citroen-ami_a.jpg'), filename: "citroen-ami_a.jpg")
car_2.photos.attach(io: File.open('app/assets/images/citroen-ami_b.jpg'), filename: "citroen-ami_b.jpg")
car_2.photos.attach(io: File.open('app/assets/images/citroen-ami_c.jpg'), filename: "citroen-ami_c.jpg")
car_2.photos.attach(io: File.open('app/assets/images/citroen-ami_d.jpg'), filename: "citroen-ami_d.jpg")
car_2.save!
car_3 = Car.new(user: users_account.sample,
                model: "Spring",
                brand: "Dacia",
                color: "Grise",
                number_of_seats: 4,
                location: "Vitrolles",
                year: 2020,
                description: "Bonjour ma Dacia Spring électrique sera parfaite pour la ville et les petits trajets en campagne.",
                start_date: Date.new(2023,6,25) ,
                end_date: Date.new(2023,7,25),
                rate: 75)
car_3.photos.attach(io: File.open('app/assets/images/Dacia-spring.jpg'), filename: "dacia-spring.jpg")
car_3.save!
car_4 = Car.new(user: users_account.sample,
                model: "ZOE",
                brand: "Renault",
                color: "Banche",
                number_of_seats: 5,
                year: 2021,
                location: "Marseille",
                description: "il est interdit de fumer dans la voiture
                pas d'animaux non plus, chargée à 100%",
                start_date: Date.new(2023,6,25),
                end_date: Date.new(2023,7,25),
                rate: 65)
car_4.photos.attach(io: File.open('app/assets/images/Renault-Zoe.jpg'), filename: "renault-zoe.jpg")
car_4.save!
car_5 = Car.new(user: users_account.sample,
                model: "e-Space Tourer",
                brand: "Citroën",
                color: "Marron",
                location: "Aix-en-Provence",
                number_of_seats: 9,
                year: 2020,
                description: "Climatisation - Régulateur de vitesse - Siège bébé- Audio Bluetooth",
                start_date:Date.new(2023,6,25) ,
                end_date: Date.new(2023,7,25),
                rate: 120)
car_5.photos.attach(io: File.open('app/assets/images/citroen-espace-tourer.jpg'), filename: "citroen-espace-tourer.jpg")
car_5.save!
car_6 = Car.new(user: users_account.sample,
                model: "e-Traveller",
                brand: "Peugeot",
                location: "Marseille",
                color: "Grise",
                number_of_seats: 7,
                year: 2022,
                description: "Voiture idéal et confortable pour les grands trajets .
                Vous pourrez charger sur une prise normale ou sur une borne
                La voiture sera livrée chargée a 100% !",
                start_date:Date.new(2023,6,25) ,
                end_date:Date.new(2023,7,25) ,
                rate: 90 )
car_6.photos.attach(io: File.open('app/assets/images/peugeot-etraveller.jpg'), filename: "peugeot-etraveller.jpg")
car_6.save!
car_7 = Car.new(user: users_account.sample,
                model: "Model Y",
                brand: "Tesla",
                color: "Bleue",
                number_of_seats: 5,
                location: "Marseille",
                year: 2022,
                description: "Voiture idéal et confortable pour les grands trajets .
                Vous pourrez charger sur une prise normale ou sur une borne
                La voiture sera livrée chargée a 100% !",
                start_date: Date.new(2023,6,25),
                end_date:Date.new(2023,7,25) ,
                rate: 100)
car_7.photos.attach(io: File.open('app/assets/images/tesla-model-y.jpg'), filename: "tesla-model-y.jpg")
car_7.save!
car_8 = Car.new(user: users_account.sample,
                model: "Model 3",
                brand: "Tesla",
                location: "Marseille",
                color: "Noire",
                number_of_seats: 5,
                year: 2021,
                description: "Voiture idéal et confortable pour les grands trajets .
                Vous pourrez charger sur une prise normale ou sur une borne
                La voiture sera livrée chargée a 100% !",
                start_date: Date.new(2023,6,25),
                end_date: Date.new(2023,7,25),
                rate: 90)
car_8.photos.attach(io: File.open('app/assets/images/tesla-model-3.jpg'), filename: "tesla-model-3.jpg")
car_8.photos.attach(io: File.open('app/assets/images/tesla-model-3_a.jpg'), filename: "tesla-model-3_a.jpg")
car_8.photos.attach(io: File.open('app/assets/images/tesla-model-3_b.jpg'), filename: "tesla-model-3_b.jpg")
car_8.photos.attach(io: File.open('app/assets/images/tesla-model-3_c.jpg'), filename: "tesla-model-3_c.jpg")
car_8.photos.attach(io: File.open('app/assets/images/tesla-model-3_d.jpg'), filename: "tesla-model-3_d.jpg")
car_8.save!
car_9 = Car.new(user: users_account.sample,
                model: "Model S",
                brand: "Tesla",
                color: "Rouge",
                year: 2022,
                location: "Marseille",
                number_of_seats: 5,
                description: "Voiture idéal et confortable pour les grands trajets .
                Vous pourrez charger sur une prise normale ou sur une borne
                La voiture sera livrée chargée a 100% !",
                start_date: Date.new(2023,6,25),
                end_date:Date.new(2023,7,25) ,
                rate: 95 )
car_9.photos.attach(io: File.open('app/assets/images/tesla-model-s.jpg'), filename: "tesla-model-s.jpg")
car_9.save!
car_10 = Car.new(user: users_account.sample,
                model: "Kona",
                brand: "Hyundai",
                color: "Bleue",
                location: "Aubagne",
                year: 2023,
                number_of_seats: 5,
                description: "Voiture idéal et confortable pour les grands trajets .
                Vous pourrez charger sur une prise normale ou sur une borne
                La voiture sera livrée chargée a 100% !",
                start_date:Date.new(2023,6,25) ,
                end_date: Date.new(2023,7,25),
                rate: 90 )
car_10.photos.attach(io: File.open('app/assets/images/hyundai-kona.jpg'), filename: "hyundai-kona.jpg")
car_10.save!
puts "created 10 cars"
puts 'finished'
