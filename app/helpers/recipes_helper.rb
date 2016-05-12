module RecipesHelper
  
  def create_recipe_ingredient_associations
    params[:recipe][:ingredient][:ingredient_ids].each do |ingredient|
      if ingredient.is_a? Integer
        RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: ingredient)
      end
    end
  end
  
  def create_recipe_meal_associations
    params[:recipe][:meal][:meal_ids].each do |meal|
      if meal.is_a? Integer
        RecipeMeal.create(recipe_id: @recipe.id, meal_id: meal)
      end
    end
  end
  
end
