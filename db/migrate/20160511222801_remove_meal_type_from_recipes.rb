class RemoveMealTypeFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :meal_type, :string
  end
end
