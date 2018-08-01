class AddSemesterRefToWorkshops < ActiveRecord::Migration[5.2]
  def change
    add_reference :workshops, :semester, foreign_key: true
  end
end
