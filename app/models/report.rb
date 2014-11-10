class Report < ActiveRecord::Base
  belongs_to :reportable, polymorphic: true
  belongs_to :users
  validates_uniqueness_of :user_id, scope: [:reportable_type, :reportable_id]
end