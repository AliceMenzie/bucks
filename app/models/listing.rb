class Listing < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  validates :industry, :task, :price, :status, presence: true
  scope :active, -> { where(status: 1) }
end
