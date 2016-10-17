class AddGeoToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :lat, :float
    add_column :countries, :lon, :float
  end
end
