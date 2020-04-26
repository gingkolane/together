class CreateLocationsPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :locations_people do |t|

      t.references :location, foreign_key: true
      t.references :person, foreign_key: true
    end
  end
end
