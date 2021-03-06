class Notifications < ActiveRecord::Migration
  def self.up
    create_table :notifications do |t|
      t.integer :user_id
      t.string  :event_type
      t.string  :event_id
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
