class AddColumnToComment < ActiveRecord::Migration
  def change
  	add_column :comment, :created_at, :date
  	add_column :comment, :updated_at, :date
  end
end
