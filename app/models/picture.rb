class Picture < ActiveRecord::Base

  belongs_to :article_package

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  
# ########################################
# # solution option 1, does not work

# # This needs to be included after all has_attached_file statements in a class
# # module DeletableAttachment
# #   extend ActiveSupport::Concern

# #   included do
#     attachment_definitions.keys.each do |name|

#       attr_accessor :"delete_#{name}"

#       before_validation { send(name).clear if send("delete_#{name}") == '1' }

#       define_method :"delete_#{name}=" do |value|
#         instance_variable_set :"@delete_#{name}", value
#         send("#{name}_file_name_will_change!")
#       end

#     end
# #   end

# # end

 
#   attr_accessor :delete_image
#     before_validation { image.clear if delete_image == '1' }
# #########################################


validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


end
