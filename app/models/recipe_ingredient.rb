class RecipeIngredient < ActiveRecord::Base
  
  belongs_to :recipe
  belongs_to :ingredient
  
  validates :ingredient_id, presence: true, numericality: {only_integer: true}
  validates :recipe_id, presence: true, numericality: {only_integer: true}
  validates :total_nutrition, numericality: {only_integer: true}
  validates :ecofriendliness, numericality: {only_integer: true}
  
  validate :total_nutrition
  validate :total_ecofriendliness
  
  def total_nutrition
    (self.ingredients.inject(0) {|sum, ingredient| sum+=ingredient.nutrition.to_i})/(self.ingredients.size)
  end
  
  def total_ecofriendliness
    (self.ingredients.inject(0) {|sum, ingredient| sum+=ingredient.ecofriendliness.to_i})/(self.ingredients.size)
  end
  
end