class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :price_per_night
      t.integer :number_of_guests
      t.string :picture_url

      t.timestamps
    end
  end
end
