class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # belongs_to :cuisine
  has_many :follows

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :bio, presence: true
end
