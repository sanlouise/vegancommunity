class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      
      t.integer :user_id, null: false
      t.string :meal_type
      t.string :title, null: false
      t.string :description, null: false
      t.string :image
      t.string :directions
      t.timestamps null: false
      
    end
  end
end
