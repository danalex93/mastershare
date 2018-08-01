class Workshop < ApplicationRecord
  belongs_to :mentor
  has_many :enrollments
  has_many :students, through: :enrollments
  has_many :materials
  has_many :topics
  has_many :comments, through: :topics
end
