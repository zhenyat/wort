require "test_helper"

class StemVowelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stem_vowels_index_url
    assert_response :success
  end
end
