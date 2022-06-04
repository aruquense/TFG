require "application_system_test_case"

class DiagnosisCisTest < ApplicationSystemTestCase
  setup do
    @diagnosis_ci = diagnosis_cis(:one)
  end

  test "visiting the index" do
    visit diagnosis_cis_url
    assert_selector "h1", text: "Diagnosis Cis"
  end

  test "creating a Diagnosis ci" do
    visit diagnosis_cis_url
    click_on "New Diagnosis Ci"

    fill_in "Description", with: @diagnosis_ci.description
    fill_in "Description en", with: @diagnosis_ci.description_EN
    fill_in "Erase", with: @diagnosis_ci.erase
    fill_in "Idn", with: @diagnosis_ci.idn
    click_on "Create Diagnosis ci"

    assert_text "Diagnosis ci was successfully created"
    click_on "Back"
  end

  test "updating a Diagnosis ci" do
    visit diagnosis_cis_url
    click_on "Edit", match: :first

    fill_in "Description", with: @diagnosis_ci.description
    fill_in "Description en", with: @diagnosis_ci.description_EN
    fill_in "Erase", with: @diagnosis_ci.erase
    fill_in "Idn", with: @diagnosis_ci.idn
    click_on "Update Diagnosis ci"

    assert_text "Diagnosis ci was successfully updated"
    click_on "Back"
  end

  test "destroying a Diagnosis ci" do
    visit diagnosis_cis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diagnosis ci was successfully destroyed"
  end
end
