class Comment < ApplicationRecord
  belongs_to :student
  belongs_to :topic
  has_one :workshop, through: :topic
  has_one :mentor, through: :workshop
end
