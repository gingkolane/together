class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :location_type
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :mapcordinates
    end
  end
end
