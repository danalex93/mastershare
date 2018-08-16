class Semester < ApplicationRecord
  has_many :workshops

  def identifier
    "#{number} - #{year}"
  end
end
