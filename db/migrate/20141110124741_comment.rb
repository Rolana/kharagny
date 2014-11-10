class Comment < ActiveRecord::Migration
  def change
  	create_table :comment do |t|
  	t.belongs_to :post
  	t.belongs_to :users
  	t.string :content

end
  end
end
