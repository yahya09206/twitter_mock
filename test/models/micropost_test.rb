require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  
  def setup
  	@user = users[:malik]
  	#this code is not idiomatically correct.
  	@micropost = Micropost.new(content: 'Lorem ipsum', user_id: @user.id)
  end

  test 'should be valid' do 
  	assert @micropost.user_id = nil
  	assert_not @micropost.valid?
  end
end
