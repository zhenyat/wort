require "test_helper"

class PossessivePronounsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get possessive_pronouns_index_url
    assert_response :success
  end
end
