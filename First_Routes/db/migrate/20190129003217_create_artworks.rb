class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.text :title, null: false 
      t.text :image_url, null: false 
      t.integer :artist_id 


      t.timestamps
    end

    add_index :artworks, :artist_id, unique: true
  end
end
