class Cuisine < ApplicationRecord
  has_many :restaurants
  has_many :user
  validates :type, presence: true
end
