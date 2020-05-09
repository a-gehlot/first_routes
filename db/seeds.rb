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

    a1 = Artwork.create!(title: "FirstPainting", image_url: "abcd.org", artist_id: u1.id)
    a2 = Artwork.create!(title: "Second", image_url: "abcdef.org", artist_id: u1.id)
    a3 = Artwork.create!(title: "PicassoStyle", image_url: "picassostyle.org", artist_id: u2.id)
    a4 = Artwork.create!(title: "Second", image_url: "ofthesecond.org", artist_id: u2.id)
    a5 = Artwork.create!(title: "MyPaintingOfACar", image_url: "paintedcar.org", artist_id: u3.id)

    as1 = ArtworkShare.create!(artwork_id: a1.id, viewer_id: u2.id)
    as2 = ArtworkShare.create!(artwork_id: a1.id, viewer_id: u3.id)
    as3 = ArtworkShare.create!(artwork_id: a3.id, viewer_id: u1.id)
    as4 = ArtworkShare.create!(artwork_id: a2.id, viewer_id: u1.id)
    as5 = ArtworkShare.create!(artwork_id: a2.id, viewer_id: u2.id)
    as6 = ArtworkShare.create!(artwork_id: a4.id, viewer_id: u2.id)
    as7 = ArtworkShare.create!(artwork_id: a5.id, viewer_id: u2.id)
    as8 = ArtworkShare.create!(artwork_id: a1.id, viewer_id: u4.id)

    c1 = Comment.create!(body: "great work!", artwork_id: a1.id, user_id: u2.id)
    c2 = Comment.create!(body: "awesome art!", artwork_id: a1.id, user_id: u3.id)
    c3 = Comment.create!(body: "cool!!", artwork_id: a2.id, user_id: u1.id)
    c2 = Comment.create!(body: "wow!", artwork_id: a4.id, user_id: u2.id)
    c2 = Comment.create!(body: "great work!", artwork_id: a5.id, user_id: u3.id)
    c2 = Comment.create!(body: "great work also!", artwork_id: a5.id, user_id: u2.id)
    c2 = Comment.create!(body: "great work x3!", artwork_id: a5.id, user_id: u4.id)
    c2 = Comment.create!(body: "great work x4!", artwork_id: a5.id, user_id: u4.id)
end
