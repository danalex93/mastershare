class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.references :workshop, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
