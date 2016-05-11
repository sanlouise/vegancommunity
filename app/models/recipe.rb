class Recipe < ActiveRecord::Base
  
  belongs_to :user
  has_many :ingredients, through: :recipe_ingredients
  has_many :recipe_ingredients
  has_many :comments
  
  private
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "Should be less than 5MB")
    end
  end
  
end
