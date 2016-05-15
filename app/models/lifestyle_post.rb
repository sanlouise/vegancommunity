class LifestylePost < ActiveRecord::Base
  
  belongs_to :user
  has_many :images, as: :imageable
  mount_uploader :image, ImageUploader
  validate :image_size
  
  private
  def image_size
    if image.size > 1.megabytes
      errors.add(:image, "Should be less than 1MB")
    end
  end
  
end
