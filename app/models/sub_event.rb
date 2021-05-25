class SubEvent < ApplicationRecord
  belongs_to :cooker, class_name: "User"
  belongs_to :event
end
