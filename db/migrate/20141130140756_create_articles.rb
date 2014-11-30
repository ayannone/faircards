class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string  :article_number
      t.string  :title
      t.text  :description
      t.decimal  :price,  precision: 8, scale: 2
      t.references :articlegroup
      t.references :manufacturer
      t.timestamps
    end
  end
end
