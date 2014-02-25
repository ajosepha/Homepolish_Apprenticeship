class AddInstagramIdToInstagramData < ActiveRecord::Migration
  def change
    add_column :instagram_data, :instagram_id, :integer
  end
end
