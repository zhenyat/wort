require "test_helper"

class VowelsChangesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vowels_changes_index_url
    assert_response :success
  end
end
