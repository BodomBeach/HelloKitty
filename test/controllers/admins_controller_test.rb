require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should not get dashboard if not logged in" do
    get '/admin'
    assert_response :redirect
  end

end
