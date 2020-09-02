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
  has_many :dishes, through: :tags
  has_many :messages, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_restaurant_or_dish,
    against: :name,
     associated_against: {
      cuisine: [:name],
      dishes:[:name]
     },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
 
  def self.upvoted
      self.all.select do |restaurant|
      cuisine_experts = restaurant.cuisine.users.count
      restaurant_upvotes = Upvote.where(restaurant: restaurant).count
      global_threshold = 0.5

      upvote_percentage = (restaurant_upvotes / cuisine_experts).to_f
      upvote_percentage >= global_threshold
    end
  end
 
  def self.latest_upvoted
    global = self.upvoted
    global = global.sort { |r1, r2|  r2.upvotes.last.created_at <=> r1.upvotes.last.created_at }
    global = global[0..9] if global.length > 10
    global
  end

  def neat_address 
    self.address.split(',')[0..1].join(',')
  end
end






