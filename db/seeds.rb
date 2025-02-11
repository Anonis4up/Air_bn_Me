# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Bike.destroy_all
User.destroy_all

  user_1 = User.create!(
      email: "Jean@jean.jean",
      first_name: "Jean",
      last_name: "Jeanjean",
      phone_number: "0606060606",
      address: "4 rue de Jean 69690 Jeanjeanvilliers",
      password: "123456"
    )

  user_2 = User.create!(
    email: "Jean1@jean.jean",
    first_name: "Jean",
    last_name: "Jeanjeanne",
    phone_number: "0606060606",
    address: "4 rue de Jean 69690 Jeanjeanvilliers",
    password: "123456"
    )

  Bike.create!(
    brand: "Shimano",
    category: "VTT",
    price_per_day: 70,
    user: user_1,
    poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114354/essai-motto-two-0002_w1vprh.jpg"
  )

  Bike.create!(
    brand: "Peugeot",
    category: "VTT",
    price_per_day: 70,
    user: user_2,
    poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114354/essai-motto-two-0002_w1vprh.jpg"
  )

  Bike.create!(
    brand: "Canyon",
    category: "Velo de course",
    price_per_day: 120,
    user: user_2,
    poster_url: "https://res.cloudinary.com/ dszuzvkcb/image/upload/ v1739114354/essai-motto-two-0002-w1vpr.jpg"

  )

  Bike.create!(
    brand: "Woom",
    category: "VTT",
    price_per_day: 120,
    user: user_2,
    poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114354/essai-motto-two-0002_w1vprh.jpg"

  )


  Bike.create!(
    brand: "Woom",
    category: "velo de campagne",
    price_per_day: 100,
    user: user_1,
    poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114354/beach-bikes-velo-confort-bbike-ile-de-re-la-couarde-scaled_l0roc4.jpg"
  )


  Bike.create!(
    brand: "Peugeot",
    category: "Velo de course",
    price_per_day: 120,
    user: user_2,
    poster_url: "https://res.cloudinary.com/ dszuzvkcb/image/upload/ v1739114354/essai-motto-two-0002-w1vpr.jpg"

  )


  Bike.create!(
    brand: "Woom",
    category: "Velo electrique",
    price_per_day: 120,
    user: user_2,
    poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114353/009ddb95a39af61c123188d2fae321aee26171ea_cizubv.jpg"

  )


  Bike.create!(
    brand: "Peugeot",
    category: "Velo electrique",
    price_per_day: 150,
    user: user_1,
    poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114353/009ddb95a39af61c123188d2fae321aee26171ea_cizubv.jpg"

  )


  Bike.create!(
    brand: "Shimano",
    category: "velo de campagne",
    price_per_day: 50,
    user: user_2,
    poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114354/beach-bikes-velo-confort-bbike-ile-de-re-la-couarde-scaled_l0roc4.jpg"

  )


  Bike.create!(
    brand: "Woom",
    category: "velo de campagne",
    price_per_day: 140,
    user: user_1,
    poster_url: "https://res.cloudinary.com/dszuzvkcb/image/upload/v1739114354/beach-bikes-velo-confort-bbike-ile-de-re-la-couarde-scaled_l0roc4.jpg"

  )
