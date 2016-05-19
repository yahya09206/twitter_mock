require 'test_helper'

class MicropostsInterfaceTest < ActionDispatch::IntegrationTest
  def setup
  	@user = users(:malik)
  end

  test 'micropost interface' do 
  	log_in_as(@user)
  	get root_path
  	assert_select 'div.pagination'
  	# Invalid submission
  	assert_no_difference 'Micropost.count' do 
  		post microposts_path, micropost: { content: ''}
  	end
  	assert_select 'div#error_explanation'
  	#Valid submission
  	content = 'This micropost really ties the room together'
  	assert_difference 'Micropost.count', 1 do 
  		post microposts_path, micropost: { content: content}
  	end
  	
end
