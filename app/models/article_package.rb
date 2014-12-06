class ArticlePackage < ActiveRecord::Base
  # has_many  :articles
  has_many :pictures, :dependent => :destroy

##############################################################
# delete of image that is being hold in the picture ojbect, does NOT work yet
  before_save :destroy_image?

  def image_delete
    @image_delete ||= "0"
  end

  def image_delete=(value)
    @image_delete = value
  end

private
  def destroy_image?
    self.image.clear if @image_delete == "1"
  end
##############################################################


end
