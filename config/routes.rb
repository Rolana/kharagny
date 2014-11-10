Rails.application.routes.draw do
  
  # devise_for :users

  #root 'bookmarks#index'
  resources :bookmarks
  resources :profiles
  # resources :profile
   get 'users/:id' => 'profiles#show'
   get 'users/:id' => 'users#show'

  # authenticated :user do
  #  get '/profile', to: 'users#show'
  # end
  
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" , :registrations => "registrations"} 

  # devise_for :users, controllers: { registrations: 'users/registrations', passwords: 'users/passwords' }

#   devise_scope :user do
#   get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
# end

  resources :friends, :only => [:index] do
    get 'fb_friends', :on => :collection
  end

#     resources :users do |user|
#     resources :friends

# end

resources :post do
  resources :comment
end
  #devise_for :users, :controllers => { :registrations => "registrations" }

  #resources :
  # devise_for :user2s
  # devise_for :user1s
  # devise_for :users
  #devise_for :user2s

  #resources :users, only:[:new, :create, :edit,:update,:show, :list]
  #resources :sessions
  # get 'users' => 'users#new'
end
