class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :mobile
      t.string :password

      t.timestamps DEFAULT: :CURRENT_TIMESTAMP
    end
  end
end
