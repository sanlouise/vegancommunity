class CreateLifestylePosts < ActiveRecord::Migration
  def change
    create_table :lifestyle_posts do |t|
      t.string :title
      t.string :body
      t.string :slideshow
      t.string :lifestyle_tag

      t.timestamps null: false
    end
  end
end
