class RenameprofielToprofiles < ActiveRecord::Migration
  def change
        rename_table :profile, :profiles
    end 
end
