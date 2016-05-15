class RemoveImagesFromLifestylePosts < ActiveRecord::Migration
  def change
    remove_column :lifestyle_posts, :image4, :string
    remove_column :lifestyle_posts, :image3, :string
    remove_column :lifestyle_posts, :image2, :string
    remove_column :lifestyle_posts, :image, :string
  end
end
