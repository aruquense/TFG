require "application_system_test_case"

class AaccsTest < ApplicationSystemTestCase
  setup do
    @aacc = aaccs(:one)
  end

  test "visiting the index" do
    visit aaccs_url
    assert_selector "h1", text: "Aaccs"
  end

  test "creating a Aacc" do
    visit aaccs_url
    click_on "New Aacc"

    fill_in "Finished", with: @aacc.finished
    fill_in "Id activity type", with: @aacc.id_activity_type
    fill_in "Id physician", with: @aacc.id_physician
    fill_in "Medicalrecord", with: @aacc.medicalrecord
    fill_in "Observations", with: @aacc.observations
    click_on "Create Aacc"

    assert_text "Aacc was successfully created"
    click_on "Back"
  end

  test "updating a Aacc" do
    visit aaccs_url
    click_on "Edit", match: :first

    fill_in "Finished", with: @aacc.finished
    fill_in "Id activity type", with: @aacc.id_activity_type
    fill_in "Id physician", with: @aacc.id_physician
    fill_in "Medicalrecord", with: @aacc.medicalrecord
    fill_in "Observations", with: @aacc.observations
    click_on "Update Aacc"

    assert_text "Aacc was successfully updated"
    click_on "Back"
  end

  test "destroying a Aacc" do
    visit aaccs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aacc was successfully destroyed"
  end
end
