class UsersController < ApplicationController
	# def index
	# 	@users = User.order (id: :profile_id).limit(20)
	# end

	def show
    @users = User.find(params[:id])
  	end
  	

end
