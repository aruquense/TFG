require "application_system_test_case"

class PatientAaccSymptomsTest < ApplicationSystemTestCase
  setup do
    @patient_aacc_symptom = patient_aacc_symptoms(:one)
  end

  test "visiting the index" do
    visit patient_aacc_symptoms_url
    assert_selector "h1", text: "Patient Aacc Symptoms"
  end

  test "creating a Patient aacc symptom" do
    visit patient_aacc_symptoms_url
    click_on "New Patient Aacc Symptom"

    fill_in "Aacc", with: @patient_aacc_symptom.aacc_id
    fill_in "Idn", with: @patient_aacc_symptom.idn
    click_on "Create Patient aacc symptom"

    assert_text "Patient aacc symptom was successfully created"
    click_on "Back"
  end

  test "updating a Patient aacc symptom" do
    visit patient_aacc_symptoms_url
    click_on "Edit", match: :first

    fill_in "Aacc", with: @patient_aacc_symptom.aacc_id
    fill_in "Idn", with: @patient_aacc_symptom.idn
    click_on "Update Patient aacc symptom"

    assert_text "Patient aacc symptom was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient aacc symptom" do
    visit patient_aacc_symptoms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient aacc symptom was successfully destroyed"
  end
end
