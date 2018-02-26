require 'test_helper'

class WritesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get writes_new_url
    assert_response :success
  end

end
