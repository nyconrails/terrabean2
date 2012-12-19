class AddAttachmentPhoto2Photo3ToBlogPosts < ActiveRecord::Migration
  def self.up
    change_table :blog_posts do |t|
      t.has_attached_file :photo_2
      t.has_attached_file :photo_3
    end
  end

  def self.down
    drop_attached_file :blog_posts, :photo_2
    drop_attached_file :blog_posts, :photo_3
  end
end
