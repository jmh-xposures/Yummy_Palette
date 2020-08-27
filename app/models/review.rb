class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_one_attached :photo
  validates :content, presence: true
end
