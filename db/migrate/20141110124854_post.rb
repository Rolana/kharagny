class Post < ActiveRecord::Migration
  def change
  	create_table :post do |t|

  	t.belongs_to :users
  	t.string :content
  	end
  end
end
