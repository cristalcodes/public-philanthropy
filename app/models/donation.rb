class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  accepts_nested_attributes_for :organization, reject_if: :all_blank
  validates :amount, presence: true
end
