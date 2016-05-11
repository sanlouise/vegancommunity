class AddQuantityByWeightToRecipeIngredients < ActiveRecord::Migration
  def change
    
    add_column :recipe_ingredients, :quantity_by_weight, :string
    
  end
end
