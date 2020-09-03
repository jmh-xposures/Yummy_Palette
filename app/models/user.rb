class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  # validates :bio, presence: true

  has_many :following_follows, foreign_key: :follower_id, class_name: "Follow", dependent: :destroy
  has_many :follower_follows, foreign_key: :followed_id, class_name: "Follow", dependent: :destroy

  belongs_to :cuisine
  has_many :reviews

  has_many :followers, through: :follower_follows, source: "follower"
  has_many :followings, through: :following_follows, source: "followed"
  has_one_attached :photo

  def has_upvoted?(resto)
    upvotes = Upvote.where(user: self, restaurant: resto)
    upvotes.length > 0
  end

  def can_upvote?(restaurant)
    self.cuisine.name == restaurant.cuisine.name
  end

  def has_favorited?(resto)
    favorites = Favorite.where(user: self, restaurant: resto)
    favorites.length > 0
  end

  def following?(user)
    follows = Follow.exists?(follower: self, followed: user)
  end 
end
