require "test_helper"

class PersonalPronounsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personal_pronouns_index_url
    assert_response :success
  end
end
