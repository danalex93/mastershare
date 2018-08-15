class Mentor < Student
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :workshops, foreign_key: "mentor_id"
  has_many :materials, through: :workshops
end
