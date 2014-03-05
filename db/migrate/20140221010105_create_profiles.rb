class CreateProfiles < ActiveRecord::Migration
  def change
  	create_table :profiles do |t|
  		t.integer :user_id
  		t.string :gender
  		t.string :location
  		t.string :first_name
  		t.string :last_name
  	end
  end
end
