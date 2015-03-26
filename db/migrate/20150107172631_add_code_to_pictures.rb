class AddCodeToPictures < ActiveRecord::Migration
  def change
    add_column  :pictures,  :code,  :string
  end
end
