class Meal < ActiveRecord::Base
  
  has_many :recipes, through: :recipe_meals
  has_many :recipe_meals
  
  validates :name, presence: true, length: { in: 2..25 }, 
    uniqueness: {case_sensitive: false}, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    
end