require "application_system_test_case"

class PatientAaccsTest < ApplicationSystemTestCase
  setup do
    @patient_aacc = patient_aaccs(:one)
  end

  test "visiting the index" do
    visit patient_aaccs_url
    assert_selector "h1", text: "Patient Aaccs"
  end

  test "creating a Patient aacc" do
    visit patient_aaccs_url
    click_on "New Patient Aacc"

    fill_in "Patient", with: @patient_aacc.Patient_id
    fill_in "Finished", with: @patient_aacc.finished
    fill_in "Id activity type", with: @patient_aacc.id_activity_type
    fill_in "Id physician", with: @patient_aacc.id_physician
    fill_in "Medicalrecord", with: @patient_aacc.medicalrecord
    fill_in "Observations", with: @patient_aacc.observations
    click_on "Create Patient aacc"

    assert_text "Patient aacc was successfully created"
    click_on "Back"
  end

  test "updating a Patient aacc" do
    visit patient_aaccs_url
    click_on "Edit", match: :first

    fill_in "Patient", with: @patient_aacc.Patient_id
    fill_in "Finished", with: @patient_aacc.finished
    fill_in "Id activity type", with: @patient_aacc.id_activity_type
    fill_in "Id physician", with: @patient_aacc.id_physician
    fill_in "Medicalrecord", with: @patient_aacc.medicalrecord
    fill_in "Observations", with: @patient_aacc.observations
    click_on "Update Patient aacc"

    assert_text "Patient aacc was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient aacc" do
    visit patient_aaccs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient aacc was successfully destroyed"
  end
end
