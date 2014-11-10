class AddcolumnsToUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :firstname, :string
  	  add_column :users, :lastname, :string
  	   add_column :users, :image_url, :string
  	    add_column :users, :gender, :string
  	     add_column :users, :city, :string
  	      add_column :users, :country, :string
  	       add_column :users, :dateOfBirth, :date
  end
end
