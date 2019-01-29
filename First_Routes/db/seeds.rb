# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.destroy_all

  vishal = User.create(username: "vishal")
  gabe = User.create(username: "Gabe")

  Artwork.destroy_all

  a1 = Artwork.create(title: 'whatever you wanna name it', image_url: 'justhttp', artist_id: vishal.id)
  a2 = Artwork.create(title: 'vishal does have cool shirts', image_url: 'vishal_wears_amazing_shirts.com', artist_id: gabe.id)

  ArtworkShare.destroy_all

  s1 = ArtworkShare.create(artwork_id: a1.id, viewer_id: gabe.id)
  s2 = ArtworkShare.create(artwork_id: a2.id, viewer_id: vishal.id)