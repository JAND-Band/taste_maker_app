class AddLatitudeAndLongitudeToUser < ActiveRecord::Migration
  # for use with geocoder
  def change
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
