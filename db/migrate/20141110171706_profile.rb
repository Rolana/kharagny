class Profile < ActiveRecord::Migration
 def change
    create_table :profile do |t|

    	t.belongs_to :users

      t.timestamps
    end
end

end
