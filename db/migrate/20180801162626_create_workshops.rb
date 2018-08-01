class CreateWorkshops < ActiveRecord::Migration[5.2]
  def change
    create_table :workshops do |t|
      t.integer :mentor_id
      t.string :title
      t.text :description
      t.text :schedule
      t.integer :quotas

      t.timestamps
    end
  end
end
