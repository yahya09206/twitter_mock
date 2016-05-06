require 'test_helper'

class UsersControllerTest < ActionController::TestCase

	def setup
		@user = users(:malik)
	end

	
  test "should get new" do
    get :new
    assert_response :success
  end

end
