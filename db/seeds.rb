require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying seed file"
Booking.delete_all
Review.delete_all
Bathroom.delete_all
User.delete_all

puts"creating new users"

harper_user = User.new(name: 'Harper', email: "harper@example.com", password: "123456")
harper_image = URI.open('https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80')
harper_user.photo.attach(io: harper_image, filename: 'nes.png', content_type: 'image/png')
harper_user.save!

madison_user = User.create!(name: 'Madison', email: "madison@example.com", password: "123456")
shaun_user = User.create!(name: "Shaun", email: "shaun@example.com", password: "123456")
brian_user = User.create!(name: 'Brian', email: "brian@example.com", password: "123456")
kate_user = User.create!(name: 'Kate', email: "kate@example.com", password: "123456")

ben_user = User.new(name: 'Ben', email: "ben@example.com", password: "123456")
ben_image = URI.open('https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80')
ben_user.photo.attach(io: ben_image, filename: 'nes.png', content_type: 'image/png')
ben_user.save!

puts User.all



  bath01 = Bathroom.new(
    title: "Luxury Bathroom",
    address: "128 Cambridge St, Pimlico, London SW1V 4QF",
    description:"This is the most luxurious bathroom in the world. Come and relax on the finest loo in London",
    price: 50,
    user_id: harper_user.id,
    )
  file01 = URI.open('https://images.unsplash.com/photo-1507652313519-d4e9174996dd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
  bath01.photos.attach(io: file01, filename: 'nes.png', content_type: 'image/png')
bath01.save!

  bath02 = Bathroom.new(
    title: "Minimalist Bathroom",
    address: "26B Doddington Grove, London SE17 3TT",
    description:"A contemporary design with clean cut lines and gentle edges working to create a modern style.",
    price: 15,
    user_id: harper_user.id,
    )
  file02 = URI.open('https://images.unsplash.com/photo-1604014237744-2f4ab6bfbcc2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3000&q=80')
  bath02.photos.attach(io: file02, filename: 'nes.png', content_type: 'image/png')
bath02.save!

  bath03 = Bathroom.new(
    title: "Lovely Bathroom",
    address: "9 Bonham Rd, Brixton Hill, London SW2 5HL",
    description:"Lovely spacious and private bathroom with XL bath. Come with your loved one and have a great time",
    price: 20,
    user_id: madison_user.id,
    )
  file03 = URI.open('https://images.unsplash.com/photo-1580229080435-1c7e2ce835c1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')
  bath03.photos.attach(io: file03, filename: 'nes.png', content_type: 'image/png')
bath03.save!

  bath04 = Bathroom.new(
    title: "Deluxe Luxury Bathroom",
    address: "25B Crookham Rd, London SW6 4EG",
    description:"Imagine the frothy feeling of a warm bubble bath against your skin. The feeling is decadent and relaxing. Experience the bathroom of your dreams! ",
    price: 30,
    user_id: madison_user.id,
    )
  file04 = URI.open('https://images.unsplash.com/photo-1611596188649-7c8e9507bdb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1310&q=80')
  bath04.photos.attach(io: file04, filename: 'nes.png', content_type: 'image/png')
bath04.save!

#   bath05 = Bathroom.new(
#     title: "The world's most expensive bathroom",
#     address: "18 Montagu Square, London W1H 2LE",
#     description:"Nestled within a Grade II-listed chalet on the banks of the Thames, this bathroom is a masterclass in opulent excess. Ostentatious bathing space contains a pair of copper bathtubs, bespoke Japanese toilets and gilded Italian wash basins",
#     price: 300,
#     user_id: 3,
#     )
#   file05 = URI.open('https://images.unsplash.com/photo-1572742482459-e04d6cfdd6f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80')
#   bath05.photos.attach(io: file05, filename: 'nes.png', content_type: 'image/png')
# bath05.save!


  bath06 = Bathroom.new(
    title: "Quick trip to the loo?",
    address: "Buckingham Palace, London SW1A 1AA",
    description:"Can't wait? Need a quick trip to the loo? This might be the bathroom for you! Compact design but always sparkling clean.",
    price: 10,
    user_id: madison_user.id,
    )
  file06 = URI.open('https://images.unsplash.com/flagged/photo-1570737231926-4d67558ff216?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=743&q=80')
  bath06.photos.attach(io: file06, filename: 'nes.png', content_type: 'image/png')
bath06.save!


  bath07 = Bathroom.new(
    title: "Quick shower before the party?",
    address: "7 Meard St, London W1F 0EW",
    description:"Why not have a quick shower before hitting the club? Even better, we bring the party to you! Visit us and get complementary shot on arrival!",
    price: 20,
    user_id: madison_user.id,
    )
  file07 = URI.open('https://images.unsplash.com/photo-1523772354886-34a1dc2f72e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=752&q=80')
  bath07.photos.attach(io: file07, filename: 'nes.png', content_type: 'image/png')
bath07.save!


  bath08 = Bathroom.new(
    title: "Zen Bathroom",
    address: "29 Denning Rd, London NW3 1ST",
    description:"The combination of spa and bathroom in a private home is unique and ever so impressive. This bathroom is a cozy haven set in the midst of modern architecture and in uniquely situated natural surroundings.",
    price: 50,
    user_id: madison_user.id,
    )
  file08 = URI.open('https://images.unsplash.com/photo-1532926381893-7542290edf1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80')
  bath08.photos.attach(io: file08, filename: 'nes.png', content_type: 'image/png')
bath08.save!


  bath09 = Bathroom.new(
    title: "Loo with a view",
    address: "44 Roedean Cres, London SW15 5JU",
    description:"There are rooms with a view, and then there are bathrooms with a view. What better way to bathe or shower? Just imagine sinking deep into a relaxing tub, maybe a candle or two, a good book, a glass of wine? Does it get any better? We think not.",
    price: 100,
    user_id: madison_user.id,
    )
  file09 = URI.open('https://images.unsplash.com/photo-1600607688066-890987f18a86?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
  bath09.photos.attach(io: file09, filename: 'nes.png', content_type: 'image/png')
bath09.save!


  bath10 = Bathroom.new(
    title: "Porta Potty reinvented",
    address: "Sandell St, London SE1 8NH",
    description:"Modern and confortable portable bathroom with active noise control and self cleaning technology",
    price: 5,
    user_id: madison_user.id,
    )
  file10 = URI.open('https://images.unsplash.com/photo-1561115650-d0f216403598?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
  bath10.photos.attach(io: file10, filename: 'nes.png', content_type: 'image/png')
bath10.save!

  bath11 = Bathroom.new(
    title: "Future is now! Bathroom of the future",
    address: "9 Bedford Row, London WC1R 4BU",
    description:"Ever wonder how tomorrow’s bathrooms look like? Using a natural filtering principle called phyto-purification, this bathroom becomes a mini-eco-system by recycling and regenerating the wastewater. Come see it for yourself!",
    price: 60,
    user_id: brian_user.id,
    )
  file11 = URI.open('https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
  bath11.photos.attach(io: file11, filename: 'nes.png', content_type: 'image/png')
bath11.save!

puts Bathroom.all


review01 = Review.create!(
  user_id: madison_user.id,
  bathroom_id: bath01.id,
  rating: 4,
  comment: "Absolutely amazing place and unforgettable experience. Bath like nowhere in the country. Great hot temperature.",
  )

review02 = Review.create!(
  user_id: brian_user.id,
  bathroom_id: bath01.id,
  comment: "What an awesome experience!!! Harper is such an amazing host. So warm, friendly and hilarious. Thank you for the great day.",
  rating: 5,
  )

review03 = Review.create!(
  user_id: shaun_user.id,
  bathroom_id: bath01.id,
  comment: "Really not what we were expecting but overall had a great experience. It was very unique, we had to focus our mind to overcome extreme conditions to detox and purify our bodies.",
  rating: 3,
  )

review04 = Review.create!(
  user_id: brian_user.id,
  bathroom_id: bath01.id,
  comment: "We loved this experience. A highlight of our holiday, beautiful location and Harper was a perfect host; giving us confidence to take part and enjoy the experience and leaving us to enjoy it.",
  rating: 4,
  )

review05 = Review.create!(
  user_id: brian_user.id,
  bathroom_id: bath07.id,
  comment: "My husband and I had a brilliant experience doing this! Kate was a fantastic host and it was a proper little wild adventure, thank you! We felt amazing afterwards.",
  rating: 4,
  )

review06 = Review.create!(
  user_id: harper_user.id,
  bathroom_id: bath07.id,
  comment: "Absolutely amazing experience! Kate was brilliant and made us feel extremely comfortable. Would definitely recommend if you like being pushed out of your comfort zone! Thank you Kate! We will be back :)",
  rating: 5,
  )

review07 = Review.create!(
  user_id: madison_user.id,
  bathroom_id: bath07.id,
  comment: "This was definitely a unique experience. This is not for those looking for a peaceful, spa-like detox. Although I was glad I did it in the end, I wouldn’t do it again.",
  rating: 3,
  )

review08 = Review.create!(
  user_id: kate_user.id,
  bathroom_id: bath07.id,
  comment: "An unusual and thoroughly enjoyable experience which helped to make our wedding anniversary celebrations extra special.",
  rating: 4,
  )

review09 = Review.create!(
  user_id: madison_user.id,
  bathroom_id: bath07.id,
  comment: "Really not what we were expecting but overall had a great experience. It was very unique, we had to focus our mind to overcome extreme conditions to detox and purify our bodies.",
  rating: 3,
  )

review10 = Review.create!(
  user_id: shaun_user.id,
  bathroom_id: bath07.id,
  comment: "We went as post-exam treat for my girlfriend and couldn't have found a better way to de-stress and reinvigorate. We were put completely at ease, shown the ropes and enjoyed chatting with Kate.",
  rating: 5,
  )

puts Review.all
