# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(email: "stefan@stefan.com", password: "password123")
user2 = User.create(email: "test@test.com", password: "password123")

profile_one = Profile.create(user: user1, avatar: "http://ichef.bbci.co.uk/news/976/mcs/media/images/82377000/jpg/_82377877_dogthinkstock.jpg", name: "Stefan Ouweneel", description: "Loves puppies")
profile_two = Profile.create(user: user2, avatar: "http://lovelace-media.imgix.net/uploads/191/0f832b40-d622-0132-cea9-0e01949ad350.jpg", name: "Mariano Something", description: "Loves kittens")

listing_one = Listing.create(price: 35, name: "Monopoly", avatar: "https://upload.wikimedia.org/wikipedia/en/f/f9/Monopoly_pack_logo.png", start_date: Time.now, end_date: Time.now + 2.weeks, description: "Beat your friends and end up fighting with this strategic boardgame!", difficulty: 5, players: 6, user: user1)
listing_two = Listing.create(price: 50, name: "Small World", avatar: "https://cf.geekdo-images.com/images/pic428828_md.jpg", start_date: Time.now, end_date: Time.now + 2.weeks, description: "Conquering lands with many different races.", difficulty: 1, players: 8, user: user2)
listing_three = Listing.create(price: 45, name: "Fluxx", avatar: "https://s.s-bol.com/imgbase0/imagebase3/large/FC/1/3/0/4/9200000039534031.jpg", start_date: Time.now, end_date: Time.now + 2.weeks, description: "It's a card game that creates new rules while you're playing.", difficulty: 3, players: 8, user: user2)
listing_four = Listing.create(price: 25, name: "Whitechapel", avatar: "http://www.loyaltysource.com/media/product/large/ffgva88_1379346411620.jpg", start_date: Time.now, end_date: Time.now + 2.weeks, description: "One player is the killer while the others are detectives trying to catch the killer.", difficulty: 4, players: 6, user: user1)
listing_five = Listing.create(price: 15, name: "Sheriff of Nottingham", avatar: "http://cdn.shopify.com/s/files/1/0708/4225/products/14_12_27_Sheriff_of_Notthingham_copy_2.jpg?v=1419721455f", start_date: Time.now, end_date: Time.now + 2.weeks, description: "Try to smuggle food into the city! Everyone takes turns playing the sheriff, while others play smugglers", difficulty: 4, players: 5, user: user1)

Booking.create(name: "Random", start_date: Time.now + 1.week, end_date: Time.now + 10.weeks, price: 35, user: user1, listing_id: listing_one)
Booking.create(name: "Random", start_date: Time.now + 2.days, end_date: Time.now + 7.days, price: 50, user: user2, listing_id: listing_two)
Booking.create(name: "Random", start_date: Time.now + 3.days, end_date: Time.now + 7.days, price: 45, user: user2, listing_id: listing_three)
Booking.create(name: "Random", start_date: Time.now + 3.days, end_date: Time.now + 7.days, price: 25, user: user1, listing_id: listing_four)
Booking.create(name: "Random", start_date: Time.now + 3.days, end_date: Time.now + 7.days, price: 15, user: user1, listing_id: listing_five)
