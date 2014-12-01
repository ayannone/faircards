class AddAttachmentArtpicToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :artpic
    end
  end

  def self.down
    remove_attachment :articles, :artpic
  end
end
