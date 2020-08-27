class Cuisine < ApplicationRecord
  has_many :restaurants
  has_many :users
  validates :type, presence: true
end
