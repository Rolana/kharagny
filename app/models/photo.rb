class Photo  < ActiveRecord::Base
  has_many :reports, as: :reportable
end