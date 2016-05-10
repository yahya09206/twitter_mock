require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  
  def setup
  	@user = users[:malik]
  	#this code is not idiomatically correct.
  	@micropost = Micropost.new(content: 'Lorem ipsum', user_id: @user.id)
  end
end
