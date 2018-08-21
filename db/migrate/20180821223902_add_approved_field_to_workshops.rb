class AddApprovedFieldToWorkshops < ActiveRecord::Migration[5.2]
  def change
    add_column :workshops, :approved, :boolean, null: false, default: false
  end
end
