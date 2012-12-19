class AddCaptionToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :caption, :string
  end
end
