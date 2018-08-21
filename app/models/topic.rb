class Topic < ApplicationRecord
  belongs_to :student
  belongs_to :workshop
  has_one :mentor, through: :workshop
  has_many :comments
end
