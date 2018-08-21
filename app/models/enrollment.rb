class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :workshop

  scope :confirmed, -> { where(confirmed: true) }
  scope :pending, -> { where(confirmed: false) }
end
