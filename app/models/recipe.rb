class Recipe < ActiveRecord::Base
  
  belongs_to :user
  # Join Table for Meals and Recipes
  has_many :meals, through: :recipe_meals
  has_many :recipe_meals
  # Join Table for Ingredients and Recipes
  has_many :ingredients, through: :recipe_ingredients
  has_many :recipe_ingredients
  
  has_many :comments
  mount_uploader :image, ImageUploader
  validate :image_size
  
  private
  def image_size
    if image.size > 1.megabytes
      errors.add(:image, "Should be less than 1MB")
    end
  end
  
end
