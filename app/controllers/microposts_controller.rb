class MicropostsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def create
		@micropost = current_user.micrposts.build(micropost_params)
	end

	def destroy
	end

end
