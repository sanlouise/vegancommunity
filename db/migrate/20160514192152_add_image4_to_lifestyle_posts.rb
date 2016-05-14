class AddImage4ToLifestylePosts < ActiveRecord::Migration
  def change
    add_column :lifestyle_posts, :image4, :string
  end
end
