class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  mount_uploader :image, ImageUploader
  
  validate :image_size
  
  private
  def image_size
    if image.size > 1.megabytes
      errors.add(:image, "Should be less than 1MB")
    end
  end
  
end