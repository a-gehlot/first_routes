class Artwork < ApplicationRecord
    validates :title, :image_url, :artist_id, presence: true
    validates :title, uniqueness: { scope: :artist_id, message: "one title per artist" } 

    belongs_to :user, class_name: "User", foreign_key: "artist_id"

    has_many :artwork_shares, class_name: "ArtworkShare", foreign_key: "artwork_id"
    has_many :shared_viewers, through: :artwork_shares, source: :viewer
end