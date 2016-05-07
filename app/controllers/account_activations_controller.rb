class AccountActivationsController < ApplicationController

	def edit
		user = User.edit.find_by(email: params[:email])
		if user && !user.activated? && user.authenticated?(:activation, params[:id])
			user.update_attribute(:activated, true)
			user.update_attribute(:activated_at, Time.zone.now)
			log_in user
			flash[:success] = 'Account activated!'
end
