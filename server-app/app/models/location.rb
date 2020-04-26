class Location < ApplicationRecord
  
  has_many :casereports
  has_many :tests, through: :casereports
  
end
