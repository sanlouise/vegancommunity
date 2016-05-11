class CreateRecipeMeals < ActiveRecord::Migration
  def change
    create_table :recipe_meals do |t|
      t.integer :recipe_id, :meal_id
    end
  end
end
