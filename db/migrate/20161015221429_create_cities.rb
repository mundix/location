class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :country_id
      t.string :zip
      t.timestamps null: false
    end
  end
end
