class Article < ActiveRecord::Base
  belongs_to :article_group
  # belongs_to :article_package

  has_attached_file :artpic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :artpic, :content_type => /\Aimage\/.*\Z/

  # validates_with AttachmentSizeValidator, :attributes => :artpic, :less_than => 1.megabytes
end
