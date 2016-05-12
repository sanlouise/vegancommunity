class RecipeMeal < ActiveRecord::Base
  
  belongs_to :recipe
  belongs_to :meal
  
  validates :recipe_id, presence: true, numericality: {only_integer: true}
  validates :meal_id, presence: true, numericality: { only_integer: true }
  
end