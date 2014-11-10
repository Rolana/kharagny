class DropfriendshipsTable < ActiveRecord::Migration
 def up
    drop_table :friendships
  end
end
