class Recipe < ActiveRecord::Base
  
  belongs_to :user
  has_many :ingredients, through: :recipe_ingredients
  has_many :recipe_ingredients
  has_many :comments
  mount_uploader :image, ImageUploader
  
  private
  def image_size
    if image.size > 1.megabytes
      errors.add(:image, "Should be less than 1MB")
    end
  end
  
end
