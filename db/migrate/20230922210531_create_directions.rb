class CreateDirections < ActiveRecord::Migration[7.0]
  def change
    create_table :directions do |t|
      t.integer :recipe_id
      t.integer :order
      t.string :instruction

      t.timestamps
    end
  end
end
