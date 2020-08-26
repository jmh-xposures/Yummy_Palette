require 'test_helper'

class FollowsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get follows_create_url
    assert_response :success
  end

end
