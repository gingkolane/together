class User < ApplicationRecord

  has_many :connections
  has_many :people, through: :connections
  has_many :notifications, through: :connections
  has_many :casereports, through: :connections

  has_many :locations_users
  has_many :locations, through: :locations_users

end
