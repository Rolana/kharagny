class Places < ActiveRecord::Migration
  def change
  	create_table (:places) do |t|
  		t.string :district, :name, :genre
  		t.integer :visits, :rating
  	end
  end
end
