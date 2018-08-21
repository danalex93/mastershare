class AddConfirmedToEnrollments < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :confirmed, :boolean, null: false, default: false
  end
end
