class Restaurant < ApplicationRecord
  belongs_to :cuisine
  validates :name, presence: true, uniqueness: true
  validates :phone, presence: true
  validate :vegetarian
end
