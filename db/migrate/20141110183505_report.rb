class Report < ActiveRecord::Migration
  def change
  	create_table (:Reports) do |t|
  		t.string :title, :content, :reportable_type
  		t.integer :reportable_id
  		t.belongs_to :users

  	end
  end
end
