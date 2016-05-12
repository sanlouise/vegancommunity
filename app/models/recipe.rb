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
  validates :image, presence: true
  validates :user_id, presence: true
  validates :title, presence: true, length: {minimum: 4, maximum: 60}
  validates :description, presence: true, length: {minimum: 50, maximum: 1000}
  validates :directions, presence: true, length: {minimum: 20, maximum: 5000}
  validates :ingredients, presence: true
  
  private
  def image_size
    if image.size > 1.megabytes
      errors.add(:image, "Should be less than 1MB")
    end
  end
  
end
