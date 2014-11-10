class DropprofilesTable < ActiveRecord::Migration
  def up
    drop_table :profiles
  end
end
