class AddGeoToSectors < ActiveRecord::Migration
  def change
    add_column :sectors, :lat, :float
    add_column :sectors, :lon, :float
  end
end
