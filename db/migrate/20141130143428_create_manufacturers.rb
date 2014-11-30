class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :add1
      t.string :add2
      t.string :city
      t.string :state
      t.string :zip
      t.string :url
      t.references :country
      t.timestamps
    end
  end
end
