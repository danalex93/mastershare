class Workshop < ApplicationRecord
  belongs_to :mentor
  belongs_to :semester
  belongs_to :institution
  has_many :enrollments
  has_many :students, through: :enrollments
  has_many :materials
  has_many :topics
  has_many :comments, through: :topics

  scope :approved, -> { where(approved: true) }

  def available_quotas
    quotas - enrollments.confirmed.count
  end
end
