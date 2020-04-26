class Connection < ApplicationRecord
  
  
  belongs_to :user
  belongs_to :person

  has_one :casereport


  
  has_one :notification
  
end
