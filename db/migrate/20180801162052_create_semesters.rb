class CreateSemesters < ActiveRecord::Migration[5.2]
  def change
    create_table :semesters do |t|
      t.integer :year
      t.integer :number

      t.timestamps
    end
  end
end
