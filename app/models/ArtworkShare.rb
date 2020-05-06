class ArtworkShare < ApplicationRecord
    validates :artwork_id, :viewer_id, presence: true
    validates :artwork_id, uniqueness: { scope: :viewer_id, message: "only one share per user" }

    belongs_to :artwork, class_name: "Artwork", foreign_key: "artwork_id"
    belongs_to :viewer, class_name: "User", foreign_key: "viewer_id"
end