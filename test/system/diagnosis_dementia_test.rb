require "application_system_test_case"

class DiagnosisDementiaTest < ApplicationSystemTestCase
  setup do
    @diagnosis_dementium = diagnosis_dementia(:one)
  end

  test "visiting the index" do
    visit diagnosis_dementia_url
    assert_selector "h1", text: "Diagnosis Dementia"
  end

  test "creating a Diagnosis dementium" do
    visit diagnosis_dementia_url
    click_on "New Diagnosis Dementium"

    fill_in "Description", with: @diagnosis_dementium.description
    fill_in "Description en", with: @diagnosis_dementium.description_EN
    fill_in "Erase", with: @diagnosis_dementium.erase
    fill_in "Idn", with: @diagnosis_dementium.idn
    click_on "Create Diagnosis dementium"

    assert_text "Diagnosis dementium was successfully created"
    click_on "Back"
  end

  test "updating a Diagnosis dementium" do
    visit diagnosis_dementia_url
    click_on "Edit", match: :first

    fill_in "Description", with: @diagnosis_dementium.description
    fill_in "Description en", with: @diagnosis_dementium.description_EN
    fill_in "Erase", with: @diagnosis_dementium.erase
    fill_in "Idn", with: @diagnosis_dementium.idn
    click_on "Update Diagnosis dementium"

    assert_text "Diagnosis dementium was successfully updated"
    click_on "Back"
  end

  test "destroying a Diagnosis dementium" do
    visit diagnosis_dementia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diagnosis dementium was successfully destroyed"
  end
end
