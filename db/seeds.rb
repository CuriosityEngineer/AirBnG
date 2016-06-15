# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: "stefan@stefan.com", password: "password123")

profile_one = Profile.create(user: user, avatar: "http://ichef.bbci.co.uk/news/976/mcs/media/images/82377000/jpg/_82377877_dogthinkstock.jpg", name: "Stefan Ouweneel", description: "Loves puppies")

listing_one = Listing.create(price: 500, name: "Monopoly", avatar: "https://upload.wikimedia.org/wikipedia/en/f/f9/Monopoly_pack_logo.png", start_date: Time.now, end_date: Time.now + 2.weeks, description: "It's awesome", difficulty: 5, players: 6, profile: profile_one)

Booking.create(name: "Random", start_date: Time.now + 1.week, end_date: Time.now + 10.weeks, price: 500, profile: profile_one, listing: listing_one)


user1 = User.create(email: "test@test.com", password: "password123")

profile_two = Profile.create(user: user1, avatar: "http://lovelace-media.imgix.net/uploads/191/0f832b40-d622-0132-cea9-0e01949ad350.jpg", name: "Stefan Ouweneels", description: "Loves puppies more")

listing_two = Listing.create(price: 50, name: "Small World", avatar: "https://cf.geekdo-images.com/images/pic428828_md.jpg", start_date: Time.now, end_date: Time.now + 2.weeks, description: "It's super awesome", difficulty: 1, players: 87, profile: profile_two)

Booking.create(name: "Random", start_date: Time.now + 2.days, end_date: Time.now + 7.days, price: 50, profile: profile_two, listing: listing_two)
