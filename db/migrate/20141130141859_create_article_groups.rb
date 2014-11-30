class CreateArticleGroups < ActiveRecord::Migration
  def change
    create_table :article_groups do |t|
      t.string :name
      t.timestamps
    end
  end
end
