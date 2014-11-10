class Groups < ActiveRecord::Migration
  def change
  	create_table(:groups) do |t|
  		t.string :name, :image_url
  		t.integer :number_of_memberss
  		t.belongs_to :users
  	end
  end
end
