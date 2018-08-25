class Institution < ApplicationRecord
  has_many :students
  has_many :mentors
  has_many :moderators
  has_many :workshops
  has_many :topics, through: :workshops
  has_many :comments, through: :topics
  has_many :materials, through: :workshops
end
