class Listing < ApplicationRecord
  belongs_to :user
  validates :industry, :task, :price, :status, presence: true
  scope :active, -> { where(status: 1) }
end
