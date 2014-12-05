class CreateArticlePackages < ActiveRecord::Migration
  def change
    create_table :article_packages do |t|
      t.string  :article_package_number
      t.string  :title
      t.text    :description
      t.decimal :price, precision: 8, scale: 2
      t.timestamps
    end
  end
end
