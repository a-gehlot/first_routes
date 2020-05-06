# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
    User.destroy_all
    Artwork.destroy_all
    ArtworkShare.destroy_all

    u1 = User.create!(username: "andrewg")
    u2 = User.create!(username: "SpenCey")
    u3 = User.create!(username: "vijaygehlot")
    u4 = User.create!(username: "clover_the_cat")

    a1 = Artwork.create!(title: "FirstPainting", image_url: "abcd.org", artist_id: 1)
    a2 = Artwork.create!(title: "Second", image_url: "abcdef.org", artist_id: 1)
    a3 = Artwork.create!(title: "PicassoStyle", image_url: "picassostyle.org", artist_id: 2)
    a4 = Artwork.create!(title: "Second", image_url: "ofthesecond.org", artist_id: 2)
    a5 = Artwork.create!(title: "MyPaintingOfACar", image_url: "paintedcar.org", artist_id: 3)


    as1 = ArtworkShare.create!(artwork_id: 1, viewer_id: 2)
    as2 = ArtworkShare.create!(artwork_id: 1, viewer_id: 3)
    as3 = ArtworkShare.create!(artwork_id: 3, viewer_id: 1)
    as4 = ArtworkShare.create!(artwork_id: 2, viewer_id: 1)
    as5 = ArtworkShare.create!(artwork_id: 2, viewer_id: 2)
    as6 = ArtworkShare.create!(artwork_id: 4, viewer_id: 2)
    as7 = ArtworkShare.create!(artwork_id: 5, viewer_id: 2)
    as8 = ArtworkShare.create!(artwork_id: 1, viewer_id: 4)
end
