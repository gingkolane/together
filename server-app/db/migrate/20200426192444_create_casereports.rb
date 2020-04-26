class CreateCasereports < ActiveRecord::Migration[5.2]
  def change
    create_table :casereports do |t|
      t.string :report_type
      t.string :symptoms
      t.string :testrequested
      t.string :date_testrequested
      t.references :location, foreign_key: true
      t.references :connection, foreign_key: true
      t.timestamps
    end
  end
end
