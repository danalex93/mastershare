class Institution < ApplicationRecord
  has_many :students
  has_many :mentors
  has_many :moderators
  has_many :workshops
end
