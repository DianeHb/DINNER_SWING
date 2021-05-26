class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :participants, dependent: :destroy
  has_many :sub_events, foreign_key: :cooker_id, dependent: :destroy
  has_many :user_diets, dependent: :destroy
  has_many :user_hobbies, dependent: :destroy

  has_one_attached :avatar
end
