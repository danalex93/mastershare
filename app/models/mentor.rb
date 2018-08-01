class Mentor < Student
  has_many :workshops, foreign_key: "mentor_id"
  has_many :materials, through: :workshops
end
