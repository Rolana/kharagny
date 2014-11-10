class DropnotificationsTable < ActiveRecord::Migration
  def up
    drop_table :notifications
  end
end
