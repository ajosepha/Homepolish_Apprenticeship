class CreateTwitterData < ActiveRecord::Migration
  def change
  	create_table :twitter_data do |t|
  		t.string :name
  		t.string :username
  		t.string :bio
  		t.integer :followers_count
  		t.string :location

  		t.timestamps
  	end
  end

end
