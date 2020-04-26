class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :message_content

      t.timestamps DEFAULT: :CURRENT_TIMESTAMP
    end
  end
end
