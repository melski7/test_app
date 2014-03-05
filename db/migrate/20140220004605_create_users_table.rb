class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.integer :user_id
  		t.string :email
  		t.datetime :birthday
  		t.integer :age
  		t.string :gender
  		t.string :location
  		t.string :first_name
  		t.string :last_name

  	end
  end
end

