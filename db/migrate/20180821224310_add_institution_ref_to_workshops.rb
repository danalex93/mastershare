class AddInstitutionRefToWorkshops < ActiveRecord::Migration[5.2]
  def change
    add_reference :workshops, :institution, foreign_key: true
  end
end
