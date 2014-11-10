class Profile < ActiveRecord::Base
	 # attr_accessible :firstname, :lastname, :email, :gender, :image_url, :dateOfBirth, :city, :country

	  belongs_to :users
	  has_many :reports, as: :reportable
end
