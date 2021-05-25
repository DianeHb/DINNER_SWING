class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :participants
  has_many :sub_events, foreign_key: :cooker_id, dependent: :destroy
  has_many :user_diets
  has_many :user_hobbies

  has_one_attached :avatar
end
