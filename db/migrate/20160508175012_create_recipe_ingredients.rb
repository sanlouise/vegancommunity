class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      
      t.integer :ingredient_id, null: false
      t.integer :recipe_id, null: false
      t.integer :total_nutrition
      t.integer :total_ecofriendliness
      t.timestamps null: false
      
    end
  end
end
