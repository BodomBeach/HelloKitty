require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get '/admin'
    assert_response :success
  end

end
