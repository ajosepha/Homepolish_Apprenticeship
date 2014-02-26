class AddCityToInstagramData < ActiveRecord::Migration
  def change
    add_column :instagram_data, :location, :string
  end
end
