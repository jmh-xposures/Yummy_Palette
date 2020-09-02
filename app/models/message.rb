class Message < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :content, presence: true
end
