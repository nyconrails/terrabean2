class AddDisplayToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :display, :boolean
  end
end
