class MicropostsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def create
		@micropost = current_user.micrposts.build(micropost_params)
		if @micrpost.save
			flash[:success] = 'Micropost created!'
			redirect_to root_url
		else
			render 'static_pages/home'
	end

	def destroy
	end

	private

		def micropost_params
			params.require(:micropost).permit(:content)
		end

end
