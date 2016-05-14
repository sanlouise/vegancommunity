class AddImage3ToLifestylePosts < ActiveRecord::Migration
  def change
    add_column :lifestyle_posts, :image3, :string
  end
end
