class AddImage2ToLifestylePosts < ActiveRecord::Migration
  def change
    add_column :lifestyle_posts, :image2, :string
  end
end
