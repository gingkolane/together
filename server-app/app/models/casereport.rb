class Casereport < ApplicationRecord

  belongs_to :connection
  has_one :user, through: :connection
  has_one :person, through: :connection

  belongs_to :location
  
  has_many :tests

end
