class AddInstitutionRefToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :institution, foreign_key: true
  end
end
