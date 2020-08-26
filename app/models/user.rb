class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :cuisine

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :bio, presence: true

  has_many :following_follows, foreign_key: :follower_id , class_name: "Follow"
  has_many :follower_follows, foreign_key: :followed_id, class_name: "Follow"
  has_many :followers, through: :follower_follows, source: "follower"
  has_many :followings, through: :following_follows, source: "followed"
end
