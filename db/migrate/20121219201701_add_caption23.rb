class AddCaption23 < ActiveRecord::Migration
  def change
    add_column :blog_posts, :caption_2, :string
    add_column :blog_posts, :caption_3, :string
  end
end
