class AddAttachmentPhotoToBlogPosts < ActiveRecord::Migration
  def self.up
    change_table :blog_posts do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :blog_posts, :photo
  end
end
