class CreateInstagramData < ActiveRecord::Migration
  def change
    create_table :instagram_data do |t|
      t.string :name
      t.string :username
      t.string :bio
      t.integer :followers_count
      t.integer :user_id
      t.timestamps
    end
  end

end
