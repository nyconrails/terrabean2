class BlogPost < ActiveRecord::Base
  
  # Gems
  has_attached_file :photo, :styles => { :thumb => ["32x32#", :png], :small => ["150x150#", :png] }
  
  # Attributes
  attr_accessible :content, :title, :photo, :caption
  
  # Validations
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
  
end
