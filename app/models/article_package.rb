class ArticlePackage < ActiveRecord::Base
  # has_many  :articles
  has_many :pictures, :dependent => :destroy
end
