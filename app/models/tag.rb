class Tag < ApplicationRecord
  belongs_to :dish
  belongs_to :restaurant
  belongs_to :user
end
