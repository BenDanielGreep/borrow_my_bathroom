require 'faker'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying seed file"
Bathroom.destroy_all
User.destroy_all
Booking.destroy_all

puts"creating new users"

harper_user = User.create!(name: 'Harper', email: "harper@example.com", password: "123456")
madison_user = User.create!(name: 'Madison', email: "madison@example.com", password: "123456")
shaun_user = User.create!(name: "Shaun", email: "shaun@example.com", password: "123456")
brian_user = User.create!(name: 'Brian', email: "brian@example.com", password: "123456")
kate_user = User.create!(name: 'Kate', email: "kate@example.com", password: "123456")

puts User.all



  bath01 = Bathroom.new(
    title: "Luxury Bathroom",
    address: Faker::Address.street_address,
    description:"This is the most luxurious bathroom in the world. Come and relax on the finest loo in London",
    price: 200,
    user_id: 1,
    )
  file01 = URI.open('https://images.unsplash.com/photo-1580229080435-1c7e2ce835c1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')
  bath01.photos.attach(io: file01, filename: 'nes.png', content_type: 'image/png')
bath01.save!

  bath02 = Bathroom.new(
    title: "Minimalist Bathroom",
    address: Faker::Address.street_address,
    description:"A contemporary design with clean cut lines and gentle edges working to create a modern style.",
    price: 100,
    user_id: 1,
    )
  file02 = URI.open('https://images.unsplash.com/photo-1604014237744-2f4ab6bfbcc2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3000&q=80')
  bath02.photos.attach(io: file02, filename: 'nes.png', content_type: 'image/png')
bath02.save!

  bath03 = Bathroom.new(
    title: "Lovely Bathroom",
    address: Faker::Address.street_address,
    description:"Lovely spacious and private bathroom with XL bath. Come with your loved one and have a great time",
    price: 50,
    user_id: 2,
    )
  file03 = URI.open('https://images.unsplash.com/photo-1507652313519-d4e9174996dd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
  bath03.photos.attach(io: file03, filename: 'nes.png', content_type: 'image/png')
bath03.save!

  bath04 = Bathroom.new(
    title: "Deluxe Bathroom",
    address: Faker::Address.street_address,
    description:"Imagine the frothy feeling of a warm bubble bath against your skin. The feeling is decadent and relaxing. Experience the bathroom of your dreams! ",
    price: 150,
    user_id: 2,
    )
  file04 = URI.open('https://images.unsplash.com/photo-1611596188649-7c8e9507bdb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1310&q=80')
  bath04.photos.attach(io: file04, filename: 'nes.png', content_type: 'image/png')
bath04.save!

  bath05 = Bathroom.new(
    title: "The world's most expensive bathroom",
    address: Faker::Address.street_address,
    description:"Nestled within a Grade II-listed chalet on the banks of the Thames, this bathroom is a masterclass in opulent excess. Ostentatious bathing space contains a pair of copper bathtubs, bespoke Japanese toilets and gilded Italian wash basins",
    price: 1000,
    user_id: 3,
    )
  file05 = URI.open('https://images.unsplash.com/photo-1572742482459-e04d6cfdd6f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80')
  bath05.photos.attach(io: file05, filename: 'nes.png', content_type: 'image/png')
bath05.save!


  bath06 = Bathroom.new(
    title: "Quick trip to the loo?",
    address: Faker::Address.street_address,
    description:"Can't wait? Need a quick trip to the loo? This might be the bathroom for you! Compact design but always sparkling clean.",
    price: 10,
    user_id: 4,
    )
  file06 = URI.open('https://images.unsplash.com/flagged/photo-1570737231926-4d67558ff216?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=743&q=80')
  bath06.photos.attach(io: file06, filename: 'nes.png', content_type: 'image/png')
bath06.save!


  bath07 = Bathroom.new(
    title: "Quick shower before the party?",
    address: Faker::Address.street_address,
    description:"Why not have a quick shower before hitting the club? Even better, we bring the party to you! Como visit us and get complementary shot on arrival!",
    price: 30,
    user_id: 4,
    )
  file07 = URI.open('https://images.unsplash.com/photo-1523772354886-34a1dc2f72e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=752&q=80')
  bath07.photos.attach(io: file07, filename: 'nes.png', content_type: 'image/png')
bath07.save!


  bath08 = Bathroom.new(
    title: "Zen Bathroom",
    address: Faker::Address.street_address,
    description:"The combination of spa and bathroom in a private home is unique and ever so impressive. This bathroom is a cozy haven set in the midst of modern architecture and in uniquely situated natural surroundings.",
    price: 80,
    user_id: 5,
    )
  file08 = URI.open('https://images.unsplash.com/photo-1523772354886-34a1dc2f72e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=752&q=80')
  bath08.photos.attach(io: file08, filename: 'nes.png', content_type: 'image/png')
bath08.save!


  bath09 = Bathroom.new(
    title: "Loo with a view",
    address: Faker::Address.street_address,
    description:"There are rooms with a view, and then there are bathrooms with a view. What better way to bathe or shower? Just imagine sinking deep into a relaxing tub, maybe a candle or two, a good book, a glass of wine? Does it get any better? We think not.",
    price: 300,
    user_id: 5,
    )
  file09 = URI.open('https://images.unsplash.com/photo-1600607688066-890987f18a86?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
  bath09.photos.attach(io: file09, filename: 'nes.png', content_type: 'image/png')
bath09.save!


  bath10 = Bathroom.new(
    title: "Porta Potty reinvented",
    address: Faker::Address.street_address,
    description:"Modern and confortable portable bathroom with active noise control and self cleaning technology",
    price: 60,
    user_id: 5,
    )
  file10 = URI.open('https://images.unsplash.com/photo-1561115650-d0f216403598?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
  bath10.photos.attach(io: file10, filename: 'nes.png', content_type: 'image/png')
bath10.save!

  bath11 = Bathroom.new(
    title: "Future is now! Bathroom of the future",
    address: Faker::Address.street_address,
    description:"Ever wonder how tomorrow’s bathrooms look like? Using a natural filtering principle called phyto-purification, this bathroom becomes a mini-eco-system by recycling and regenerating the wastewater. Come see it for yourself!",
    price: 500,
    user_id: 3,
    )
  file11 = URI.open('https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
  bath11.photos.attach(io: file11, filename: 'nes.png', content_type: 'image/png')
bath11.save!

puts Bathroom.all


Booking.create!(
  user_id: 1,
  bathroom_id: 1,
  start_time: "2021-05-15 13:00:00",
  end_time: "2021-05-15 14:00:00",
  booking_price: 200,
  )

Booking.all
