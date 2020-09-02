class Cuisine < ApplicationRecord
  has_many :restaurants
  has_many :users
  validates :name, presence: true

  has_one_attached :photo

  def cuisine_upvoted
     restaurants.to_a.select do |restaurant|
       cuisine_experts = users.count
       restaurant_upvotes = Upvote.where(restaurant: restaurant).count
       global_threshold = 0.4

       upvote_percentage = restaurant_upvotes / cuisine_experts.to_f
       upvote_percentage >= global_threshold
     end
  end

  def pending_cuisine
    restaurants.to_a.select do |restaurant|
      cuisine_experts = users.count
      restaurant_upvotes = Upvote.where(restaurant: restaurant).count
      global_threshold = 0.4

      upvote_percentage = restaurant_upvotes / cuisine_experts.to_f
      upvote_percentage < global_threshold
    end
  end
end
