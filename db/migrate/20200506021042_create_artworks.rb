class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title, :null => false
      t.string :image_url, :null => false
      t.integer :artist_id, :null => false

      t.timestamps
      
      t.index [:artist_id, :title], :unique => true
    end
    
  end
end
