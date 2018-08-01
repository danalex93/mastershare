class AddStudentRefToTopics < ActiveRecord::Migration[5.2]
  def change
    add_reference :topics, :student, foreign_key: true
  end
end
