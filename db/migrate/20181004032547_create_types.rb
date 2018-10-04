class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.string :material
      t.string :description
      t.integer :goal_value

      t.timestamps
    end
  end
end
