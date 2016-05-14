class AddImageToLifestylePosts < ActiveRecord::Migration
  def change
    add_column :lifestyle_posts, :image, :string
  end
end
