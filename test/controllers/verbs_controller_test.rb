require "test_helper"

class VerbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @verb = verbs(:one)
  end

  test "should get index" do
    get verbs_url
    assert_response :success
  end

  test "should get new" do
    get new_verb_url
    assert_response :success
  end

  test "should create verb" do
    assert_difference("Verb.count") do
      post verbs_url, params: { verb: { auxiliary: @verb.auxiliary, en: @verb.en, form: @verb.form, infinitive: @verb.infinitive, part_of_speech_id: @verb.part_of_speech_id, participle: @verb.participle, past: @verb.past, prasent: @verb.present, prefix: @verb.prefix, ru: @verb.ru, stem_vowel_id: @verb.stem_vowel_id, trascription: @verb.trascription } }
    end

    assert_redirected_to verb_url(Verb.last)
  end

  test "should show verb" do
    get verb_url(@verb)
    assert_response :success
  end

  test "should get edit" do
    get edit_verb_url(@verb)
    assert_response :success
  end

  test "should update verb" do
    patch verb_url(@verb), params: { verb: { auxiliary: @verb.auxiliary, en: @verb.en, form: @verb.form, infinitive: @verb.infinitive, part_of_speech_id: @verb.part_of_speech_id, participle: @verb.participle, past: @verb.past, present: @verb.present, prefix: @verb.prefix, ru: @verb.ru, stem_vowel_id: @verb.stem_vowel_id, trascription: @verb.trascription } }
    assert_redirected_to verb_url(@verb)
  end

  test "should destroy verb" do
    assert_difference("Verb.count", -1) do
      delete verb_url(@verb)
    end

    assert_redirected_to verbs_url
  end
end
