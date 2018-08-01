class Student < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :enrollments
  has_many :workshops, through: :enrollments
  has_many :topics
  has_many :comments
end
