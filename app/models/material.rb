class Material < ApplicationRecord
  has_one_attached :file
  belongs_to :workshop
  has_one :mentor, through: :workshop
end
