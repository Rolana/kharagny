class DropfriendsTable < ActiveRecord::Migration
 
  	def up
    drop_table :friends
  end
  
end
