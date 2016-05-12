class Meal < ActiveRecord::Base
  has_many :recipes, through: :recipe_meals
  has_many :recipe_meals
  
  validates :name, presence: true, length: { minimum: 2, maximum: 25 }, uniqueness: {case_sensitive: false}
end