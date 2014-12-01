class RenameArticleGroupFieldInArticles < ActiveRecord::Migration
  def change
    rename_column :articles, :articlegroup_id, :article_group_id
  end
end
