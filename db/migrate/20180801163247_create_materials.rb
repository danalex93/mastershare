class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :title
      t.references :workshop, foreign_key: true

      t.timestamps
    end
  end
end
