class Cuisine < ApplicationRecord
  has_many :restaurants
  has_many :user
  validates :name, presence: true
  has_one_attached :photo
end
