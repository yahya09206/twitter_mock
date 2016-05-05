require 'test_helper'

class SessionsHelperTest < ActionView::TestCase

	def setup
		@user = users(:malik)
		remember(@user)