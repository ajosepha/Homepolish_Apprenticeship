class AddUserIdToTwitterDataTable < ActiveRecord::Migration
  def change
    add_column :twitter_data, :user_id, :integer
  end
end
