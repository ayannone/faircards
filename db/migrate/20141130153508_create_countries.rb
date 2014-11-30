class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string  :name
      t.string  :countrycode
      t.string  :continent
      t.timestamps
    end
  end
end
