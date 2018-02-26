require 'test_helper'

class ChushionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chushions_index_url
    assert_response :success
  end

end
