class Organization < ApplicationRecord
  has_many :donations
  has_many :users, through: :donations 
end
