class Notification < ApplicationRecord
  belongs_to :connection
  has_one :user, through: :connection
  has_one :person, through: :connection
end
