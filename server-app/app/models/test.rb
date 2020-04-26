class Test < ApplicationRecord
  
  belongs_to :casereport

  has_one :person, through: :casereport

end
