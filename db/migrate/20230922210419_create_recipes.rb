class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :name
      t.string :chef
      t.integer :prep_time
      t.integer :cook_time
      t.integer :temperature

      t.timestamps
    end
  end
end
