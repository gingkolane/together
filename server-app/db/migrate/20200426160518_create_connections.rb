class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.string :connection_type
      t.references :user, foreign_key: true
      t.references :person, foreign_key: true

    end
  end
end
