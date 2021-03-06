# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'CrazyCatGuy')
user2 = User.create(username: 'iLikeTurtles')


artwork1 = Artwork.create(title: 'My cat', image_url: 'www.coolcats.com/mycat', artist_id: 2)
artwork2 = Artwork.create(title: 'look a turtle', image_url: 'www.turtlesoup.com/yungturtle', artist_id: 1)

artshare1 = ArtworkShare.create(artwork_id: 1, viewer_id: 1)
artshare1 = ArtworkShare.create(artwork_id: 1, viewer_id: 2)
artshare1 = ArtworkShare.create(artwork_id: 2, viewer_id: 1)
artshare1 = ArtworkShare.create(artwork_id: 2, viewer_id: 2)
artshare1 = ArtworkShare.create(artwork_id: 2, viewer_id: user1.id)
artshare1 = ArtworkShare.create(artwork_id: 2, viewer_id: user2.id)
