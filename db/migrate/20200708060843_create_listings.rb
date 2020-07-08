class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :neighbourhood
      t.float :latitude
      t.float :longitude
      t.string :room_type
      t.integer :price
      t.integer :minimum_nights

      t.timestamps
    end
  end
end
