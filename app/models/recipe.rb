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
  
  validates :user_id, presence: true, numericality: {only_integer: true}
  validates :meal_id, presence: true, numericality: { only_integer: true }
  validates :title, presence: true, length: { in: 4..60 }
  validates :description, presence: true, length: { in: 50..1000 }
  validates :directions, presence: true, length: { in: 20..5000 }
  validate :image_size
  validates :image, presence: true
  
  private
  def image_size
    if image.size > 1.megabytes
      errors.add(:image, "Should be less than 1MB")
    end
  end
  
end
