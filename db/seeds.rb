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
  first_name: "Jean",
  last_name: "Jeanjeanne",
  phone_number: "0606060606",
  address: "5 Pl. du 8 Mai 1945 92300 Levallois-Perret",
  password: "123456"
)

bike_b1 = Bike.create!(
  brand: "Shimano",
  category: "Wagon de fête",
  price_per_day: 70,
  user: user_1,
  poster_url: "https://res.cloudinary.com/dxula997i/image/upload/v1739114354/wagon1.jpg",
  location: user_1.address
)

bike_b2 = Bike.create!(
  brand: "Peugeot",
  category: "Wagon de fête",
  price_per_day: 70,
  user: user_2,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114354/essai-motto-two-0002_w1vprh.jpg",
  location: user_2.address
)

bike_b3 = Bike.create!(
  brand: "Canyon",
  category: "Wagon de course",
  price_per_day: 120,
  user: user_2,
  poster_url: "https://res.cloudinary.com/ dszuzvkcb/image/upload/ v1739114354/essai-motto-two-0002-w1vpr.jpg",
  location: user_2.address
)

bike_b4 = Bike.create!(
  brand: "Woom",
  category: "Wagon de fête",
  price_per_day: 120,
  user: user_2,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114354/essai-motto-two-0002_w1vprh.jpg",
  location: user_2.address
)

bike_b5 = Bike.create!(
  brand: "Woom",
  category: "Wagon agricole",
  price_per_day: 100,
  user: user_1,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114354/beach-bikes-velo-confort-bbike-ile-de-re-la-couarde-scaled_l0roc4.jpg",
  location: user_1.address
)

bike_b6 = Bike.create!(
  brand: "Peugeot",
  category: "Wagon de course",
  price_per_day: 120,
  user: user_2,
  poster_url: "https://res.cloudinary.com/ dszuzvkcb/image/upload/ v1739114354/essai-motto-two-0002-w1vpr.jpg",
  location: user_2.address
)

bike_b7 = Bike.create!(
  brand: "Woom",
  category: "Wagon hybride",
  price_per_day: 120,
  user: user_2,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114353/009ddb95a39af61c123188d2fae321aee26171ea_cizubv.jpg",
  location: user_2.address
)

bike_b8 = Bike.create!(
  brand: "Peugeot",
  category: "Wagon hybride",
  price_per_day: 150,
  user: user_1,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114353/009ddb95a39af61c123188d2fae321aee26171ea_cizubv.jpg",
  location: user_1.address
)

bike_b9 = Bike.create!(
  brand: "Shimano",
  category: "Wagon agricole",
  price_per_day: 50,
  user: user_2,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114354/beach-bikes-velo-confort-bbike-ile-de-re-la-couarde-scaled_l0roc4.jpg",
  location: user_2.address
)

bike = Bike.create!(
  brand: "Woom",
  category: "Wagon agricole",
  price_per_day: 140,
  user: user_1,
  poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114354/wagon1.jpg",
  location: user_1.address
)

Reservation.create(
  start_date: Date.today,
  end_date: Date.today + 1,
  bike_id: bike.id,
  user_id: user_1.id
)
