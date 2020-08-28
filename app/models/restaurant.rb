class Restaurant < ApplicationRecord
  belongs_to :cuisine
  has_many :users, through: :upvotes
  has_many :users, through: :reviews
  has_many :users, through: :favorites
  has_many :users, through: :tags
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :upvotes, dependent: :destroy
  has_many :tags, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone, presence: true
  # validate :vegetarian
  # validates :latitude, presence: true
  # validates :longitude, presence: true
  has_one_attached :photo
  
  def self.latest_upvoted
    global = self.all.select do |restaurant|
      cuisine_experts = restaurant.cuisine.users.count
      restaurant_upvotes = Upvote.where(restaurant: restaurant).count
      global_threshold = 0.15

      restaurant_value = (restaurant_upvotes / global_threshold).to_f
      restaurant_value >= global_threshold
    end
    global = global.sort { |r1, r2| r1.upvotes.order(created_at: :desc).last.created_at <=> r2.upvotes.order(created_at: :desc).last.created_at }
    # global = global[0..9] if global.length > 10
    # global
  end

  def neat_address 
    self.address.split(',')[0..1].join(',')
  end
end






