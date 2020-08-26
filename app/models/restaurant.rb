class Restaurant < ApplicationRecord
  belongs_to :cuisine
  has_many :users, through: :upvotes
  has_many :users, through: :reviews
  has_many :users, through: :favorites
  has_many :users, through: :tags
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone, presence: true
  validate :vegetarian
  
end
