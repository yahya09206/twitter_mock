require 'test_helper'

class MicropostsInterfaceTest < ActionDispatch::IntegrationTest
  def setup
  	@user = users(:malik)
  end

  test 'micropost interface' do 
  	log_in_as(@user)
  	get root_path
  	assert_select 'div.pagination'
end
