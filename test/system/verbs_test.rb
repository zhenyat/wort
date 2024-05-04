require "application_system_test_case"

class VerbsTest < ApplicationSystemTestCase
  setup do
    @verb = verbs(:one)
  end

  test "visiting the index" do
    visit verbs_url
    assert_selector "h1", text: "Verbs"
  end

  test "should create verb" do
    visit verbs_url
    click_on "New verb"

    fill_in "Auxiliary", with: @verb.auxiliary
    fill_in "En", with: @verb.en
    fill_in "Form", with: @verb.form
    fill_in "Infinitive", with: @verb.infinitive
    fill_in "Part of speech", with: @verb.part_of_speech_id
    fill_in "Participle", with: @verb.participle
    fill_in "Past", with: @verb.past
    fill_in "Present", with: @verb.present
    fill_in "Prefix", with: @verb.prefix
    fill_in "Ru", with: @verb.ru
    fill_in "Stem vowel", with: @verb.stem_vowel_id
    fill_in "Trascription", with: @verb.trascription
    click_on "Create Verb"

    assert_text "Verb was successfully created"
    click_on "Back"
  end

  test "should update Verb" do
    visit verb_url(@verb)
    click_on "Edit this verb", match: :first

    fill_in "Auxiliary", with: @verb.auxiliary
    fill_in "En", with: @verb.en
    fill_in "Form", with: @verb.form
    fill_in "Infinitive", with: @verb.infinitive
    fill_in "Part of speech", with: @verb.part_of_speech_id
    fill_in "Participle", with: @verb.participle
    fill_in "Past", with: @verb.past
    fill_in "Present", with: @verb.present
    fill_in "Prefix", with: @verb.prefix
    fill_in "Ru", with: @verb.ru
    fill_in "Stem vowel", with: @verb.stem_vowel_id
    fill_in "Trascription", with: @verb.trascription
    click_on "Update Verb"

    assert_text "Verb was successfully updated"
    click_on "Back"
  end

  test "should destroy Verb" do
    visit verb_url(@verb)
    click_on "Destroy this verb", match: :first

    assert_text "Verb was successfully destroyed"
  end
end
