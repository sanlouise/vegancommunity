class Ingredient < ActiveRecord::Base
  
  has_many :recipes, through: :recipe_ingredients
  has_many :recipe_ingredients
  
  validates :name, presence: true, length: { in: 2..100 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  
  validates :nutrition, numericality: {only_integer: true}
  validates :ecofriendliness, numericality: {only_integer: true}
  
end