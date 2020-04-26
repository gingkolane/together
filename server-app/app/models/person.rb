class Person < ApplicationRecord

  has_many :connections
  has_many :users, through: :connections
  has_many :notifications, through: :connections
  
  has_many :casereports, through: :connections
  has_many :tests, through: :casereports

  has_many :locations_people
  has_many :locations, through: :locations_people

end
