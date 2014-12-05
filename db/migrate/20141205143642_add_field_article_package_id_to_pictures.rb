class AddFieldArticlePackageIdToPictures < ActiveRecord::Migration
  def change
    add_column  :pictures,  :article_package_id,  :integer
  end
end
