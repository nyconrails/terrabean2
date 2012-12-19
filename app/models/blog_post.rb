class BlogPost < ActiveRecord::Base
  
  # Gems
  has_attached_file :photo, :styles => { :thumb => ["32x32#", :png], :small => ["150x150#", :png] }
  has_attached_file :photo_2, :styles => { :thumb => ["32x32#", :png], :small => ["150x150#", :png] }
  has_attached_file :photo_3, :styles => { :thumb => ["32x32#", :png], :small => ["150x150#", :png] }
  
  # Attributes
  attr_accessible :content, :title, :photo, :photo_2, :photo_3, :caption, :caption_2, :caption_3, :display
  
  # Validations
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_size :photo_2, :less_than => 5.megabytes
  validates_attachment_size :photo_3, :less_than => 5.megabytes
  
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
  validates_attachment_content_type :photo_2, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
  validates_attachment_content_type :photo_3, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
  
  # Methods
  
  def display_yn
    self.display == true ? 'Yes' : 'No'
  end
  
end
