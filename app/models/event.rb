class Event < ApplicationRecord
  belongs_to :city
  has_many :participants, dependent: :destroy
  has_many :sub_events, dependent: :destroy
end
