class User < ActiveRecord::Base
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  #devise_for :users, controllers: { registrations: 'users/registrations', passwords: 'users/passwords' }

   has_one :profiles  
   has_many :post,    dependent: :destroy 
   has_many :comment 
   has_many :notifications 

   has_many :comment, as: :commentable, dependent: :destroy

   has_many :reports                 
   has_many :reports, as: :reportable 

  def self.from_omniauth(auth)
  where(auth_provider: auth.provider, auth_uid: auth.uid).first_or_create do |user|
    user.auth_token = auth.credentials.token

    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.firstname = auth.info.firstname   
    user.lastname = auth.info.lastname   
    user.image_url = auth.info.image_url
  end
end

 def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  after_create :create_profile
      def create_profile
            self.create_profile
         end

  has_many :friendships
  has_many :friends, :through => :friendships
  # has_many :pending_friends,
  #          :through => :friendships,
  #          :source => :friend,
  #          :status => 'pending'

  def self.request(user, friend)
    unless user == friend or Friendship.exists?(user, friend)
      transaction do
        create(:user => user, :friend => friend, :status => 'pending')
        create(:user => friend, :friend => user, :status => 'requested')
      end
    end
  end

  def self.accept(user, friend)
    transaction do
      accepted_at = Time.now
      accept_one_side(user, friend, accepted_at)
      accept_one_side(friend, user, accepted_at)
    end
  end

  def self.accept_one_side(user, friend, accepted_at)
    request = find_by_user_id_and_friend_id(user, friend)
    request.status = 'accepted'
    request.accepted_at = accepted_at
    request.save!
  end


 #  #has_many :friends, :through => :friendships, :conditions => "status = 'accepted'"
 #  has_many :friends, -> { where (:friendships { state: "accepted"}) }, through: :friendships
 #  has_many :requested_friends -> { where (:friendships {state: "requested"})}, through: :friendships, :order => "friendships.created_at"
 #  #has_many :requested_friends, :through => :friendships, :source => :friend, :conditions => "status = 'requested'", :order => "friendships.created_at"
 #  has_many :pending_friends -> { where (:friendships {state: "pending"})}, through: :friendships, :order => "friendships.created_at"
 # # has_many :pending_friends, :through => :friendships, :source => :friend, :conditions => "status = 'pending'", :order => "friendships.created_at"
 #  has_many :friendships, :dependent => :destroy

  # has_many :parent_links, :class_name => 'Friends', :foreign_key => :parent_user_id
  # has_many :child_links, :class_name => 'Friends', :foreign_key => :child_user_id
 # has_many :bookmarks
end
