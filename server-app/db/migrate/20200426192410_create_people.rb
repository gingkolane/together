class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :mobile
      t.string :qrcode

      t.timestamps
    end
  end
end
