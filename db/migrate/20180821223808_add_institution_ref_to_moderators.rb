class AddInstitutionRefToModerators < ActiveRecord::Migration[5.2]
  def change
    add_reference :moderators, :institution, foreign_key: true
  end
end
