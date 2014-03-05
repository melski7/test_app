class CreatePost < ActiveRecord::Migration
  def change
  	create_table  :posts do |t|
  		t.integer :user_id
  		t.string  :title
  		t.text    :body
  		t.timestamps #creates 'created_at, & updated_at' columns magically
 	end
  end
end
