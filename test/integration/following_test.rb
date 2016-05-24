require 'test_helper'

class FollowingTest < ActionDispatch::IntegrationTest
  
  def setup
  	@user = user(:malik)
  	log_in_as(@user)
  end

  test 'following page' do

end
