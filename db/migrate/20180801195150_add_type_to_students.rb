class AddTypeToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :type, :string
  end
end
