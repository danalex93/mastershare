class Topic < ApplicationRecord
  belongs_to :student
  belongs_to :workshop
  has_one :mentor, through: :workshop
end
