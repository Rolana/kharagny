class Friendships < ActiveRecord::Migration
  def change
  	create_table(:friendships) do |t|
  		t.belongs_to :users
  		t.belongs_to :friend
  		t.string :status
  		 
  		t.timestamps 


  	end
  end
end
