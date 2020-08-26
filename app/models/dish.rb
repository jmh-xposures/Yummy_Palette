class Dish < ApplicationRecord
  has_many :restaurants, through: :tags
  has_many :users, through: :tags
  validates :name, presence: true
end
