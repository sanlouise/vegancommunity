class RemoveSlideShowFromLifestylePosts < ActiveRecord::Migration
  def change
    remove_column :lifestyle_posts, :slideshow, :string
  end
end
