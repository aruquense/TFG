require "application_system_test_case"

class PatientAaccDiseasesTest < ApplicationSystemTestCase
  setup do
    @patient_aacc_disease = patient_aacc_diseases(:one)
  end

  test "visiting the index" do
    visit patient_aacc_diseases_url
    assert_selector "h1", text: "Patient Aacc Diseases"
  end

  test "creating a Patient aacc disease" do
    visit patient_aacc_diseases_url
    click_on "New Patient Aacc Disease"

    fill_in "Description", with: @patient_aacc_disease.description
    fill_in "Description en", with: @patient_aacc_disease.description_en
    fill_in "Idn", with: @patient_aacc_disease.idn
    click_on "Create Patient aacc disease"

    assert_text "Patient aacc disease was successfully created"
    click_on "Back"
  end

  test "updating a Patient aacc disease" do
    visit patient_aacc_diseases_url
    click_on "Edit", match: :first

    fill_in "Description", with: @patient_aacc_disease.description
    fill_in "Description en", with: @patient_aacc_disease.description_en
    fill_in "Idn", with: @patient_aacc_disease.idn
    click_on "Update Patient aacc disease"

    assert_text "Patient aacc disease was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient aacc disease" do
    visit patient_aacc_diseases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient aacc disease was successfully destroyed"
  end
end
