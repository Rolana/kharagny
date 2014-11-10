class Friendship < ActiveRecord::Base

	# belongs_to :users
	# belongs_to :friends, :class_name => 'User', :foreign_key =>'friend_id'

	belongs_to :users
  	belongs_to :friend, :class_name => 'User'
  	

end
