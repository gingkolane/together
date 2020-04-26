class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :testperson_id
      t.string :testtype
      t.string :testkit_name
      t.string :testkit_identifier
      t.string :result
      t.string :date_testadmin
      t.string :date_testresult
      t.references :casereport, foreign_key: true

      t.timestamps
    end
  end
end
