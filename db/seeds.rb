require "date"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Reservation.destroy_all
Bike.destroy_all
User.destroy_all

user_1 = User.create!(
  email: "Jeanx@jean.jean",
  first_name: "Jean",
  last_name: "Jeanjean",
  phone_number: "0606060606",
  address: "85 Quai d'Austerlitz 75013 Paris",
  password: "123456"
)

user_2 = User.create!(
  email: "Jean1@jean.jean",
  first_name: "Jean-Jeanne",
  last_name: "Jeanjeanne",
  phone_number: "0606060606",
  address: "5 Pl. du 8 Mai 1945 92300 Levallois-Perret",
  password: "123456"
)
user_3 = User.create!(
  email: "Jean2@jean.jean",
  first_name: "Jean-Wagon",
  last_name: "Jeanjean",
  phone_number: "0606060606",
  address: "Place Louis Armand, 75012 paris",
  password: "123456"
)

user_4 = User.create!(
  email: "Jean3@jean.jean",
  first_name: "Le contrôleur de la dernière fois",
  last_name: "Jeanjeanne",
  phone_number: "0606060606",
  address: "1 place Jean Moulin, 94140 Maison Alfort",
  password: "123456"
)
user_5 = User.create!(
  email: "Jean4@jean.jean",
  first_name: "Jean",
  last_name: "Jeanjean",
  phone_number: "0606060606",
  address: "17 boulevard Vaugirard, 75015 Paris",
  password: "123456"
)

user_6 = User.create!(
  email: "Jean5@jean.jean",
  first_name: "Jean-Jean",
  last_name: "Jeanjeanne",
  phone_number: "0606060606",
  address: "18 rue de Dunkerque, 75010 Paris",
  password: "123456"
)
Bike.create!(
  brand: "Le train Bleu 3000",
  category: "Wagon Haute Vitesse",
  price_per_day: 70,
  user: user_1,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739718798/MjAyMjA2MjA1ZTFjNGEyM2JmNzFkNzNjZmZjOTA0ZGM5MWVkZmY_xusxlj.jpg",
  location: user_1.address
)

Bike.create!(
  brand: "Le Elgin",
  category: "Wagon Train",
  price_per_day: 70,
  user: user_2,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739718797/Capture_d_%C3%A9cran_2025-02-16_160458_t9pt79.jpg",
  location: user_2.address
)

Bike.create!(
  brand: "Canyon",
  category: "Wagon Tandem",
  price_per_day: 120,
  user: user_3,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739718796/Lorry_u2iy8y.jpg",
  location: user_3.address
)

Bike.create!(
  brand: "RER Privé",
  category: "Wagon Train",
  price_per_day: 120,
  user: user_4,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739718793/Alstom-Petite-Foret-230825-2_tbya4i.jpg",
  location: user_4.address
)

Bike.create!(
  brand: "SpeedWagon",
  category: "Wagon de Course",
  price_per_day: 100,
  user: user_5,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739718790/structure-de-jeux-le-petit-train_qiqe1b.jpg",
  location: user_5.address
)

Bike.create!(
  brand: "Fendeur de Rails",
  category: "Wagon Agricole",
  price_per_day: 120,
  user: user_6,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739718789/mini-trains-aout-1_illsgf.jpg",
  location: user_6.address
)

Bike.create!(
  brand: "Canyon V10",
  category: "Wagon Tandem",
  price_per_day: 120,
  user: user_2,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739718793/Dresina_aldk2h.jpg ",
  location: user_2.address
)

Bike.create!(
  brand: "Wa-Wagon",
  category: "Wagon Ultra Velocité",
  price_per_day: 150,
  user: user_1,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739718791/71E9GqfLwdL_c5znmh.jpg ",
  location: user_1.address
)

Bike.create!(
  brand: "SNCE Scénic 0p",
  category: "Wagon familial",
  price_per_day: 50,
  user: user_3,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739718790/27588418-diaporama-scaled_zzuz3l.jpg",
  location: user_2.address
)

bike = Bike.create!(
  brand: "Papy Dimitri",
  category: "Wagon Vélo",
  price_per_day: 140,
  user: user_6,
  poster_url: " https://res.cloudinary.com/dszuzvkcb/image/upload/v1739718796/Russian_Gendarmes_1890_na7ikl.jpg",
  location: user_1.address
)
bike = Bike.create!(
  brand: "Wagon Cab",
  category: "Wagon Train",
  price_per_day: 140,
  user: user_4,
  poster_url: " https://res.cloudinary.com/dszuzvkcb/image/upload/v1739718794/Draisine_Tatra15-52_lzvjds.jpg",
  location: user_1.address
)
Reservation.create(
  start_date: Date.today,
  end_date: Date.today + 1,
  bike_id: bike.id,
  user_id: user_1.id
)
