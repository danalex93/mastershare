class Material < ApplicationRecord
  belongs_to :workshop
  has_one :mentor, through: :workshop
end
