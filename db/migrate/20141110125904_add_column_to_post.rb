class AddColumnToPost < ActiveRecord::Migration
  def change

  	add_column :post, :created_at, :date
  	add_column :post, :updated_at, :date
  end
end
