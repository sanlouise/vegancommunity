class MealsController < ApplicationController
  
  def breakfast
    @recipes = Recipe.all.select {|recipe| recipe if recipe.meal_id == 1}
    p @recipes
  end
  
  def lunch
  end
  
  def dinner
  end

end