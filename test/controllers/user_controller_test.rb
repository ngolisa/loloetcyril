require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get invites" do
    get user_invites_url
    assert_response :success
  end

end
