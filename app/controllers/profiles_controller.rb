class ProfilesController < ApplicationController

	def create
		@profile = Profile.find(params[:id])
	end 

	def edit
	   @profile = current_user.profile
	end


	def show
		if params[:id]
      @profile = profile.find(params[:id])
  else
  
    @profile = new_user_session_path
  end

	end 

	def new
		redirect_to profile_path
	 end

	end
