class Picture < ActiveRecord::Base

  belongs_to :article_package

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


##############################################################
# delete of image that is being hold in the picture ojbect, does NOT work yet



attr_accessor :image_delete
    before_validation { image.clear if image_delete == '1' }
  # before_save :destroy_image?



  def image_delete
    @image_delete ||= "0"
  end

  def image_delete=(value)
    @image_delete = value
  end

private
  # def destroy_image?
  #   binding.pry
  #   # self.image.clear if @image_delete == "1"
  #   if @image_delete == "1"
  #     # self.image.destroy #Will remove the attachment and save the model
  #     self.image.clear #Will queue the attachment to be deleted
  #   end
  # end
##############################################################
  
end
