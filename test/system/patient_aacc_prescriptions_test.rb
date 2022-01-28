require "application_system_test_case"

class PatientAaccPrescriptionsTest < ApplicationSystemTestCase
  setup do
    @patient_aacc_prescription = patient_aacc_prescriptions(:one)
  end

  test "visiting the index" do
    visit patient_aacc_prescriptions_url
    assert_selector "h1", text: "Patient Aacc Prescriptions"
  end

  test "creating a Patient aacc prescription" do
    visit patient_aacc_prescriptions_url
    click_on "New Patient Aacc Prescription"

    fill_in "Aacc", with: @patient_aacc_prescription.aacc_id
    fill_in "Id physician", with: @patient_aacc_prescription.id_physician
    fill_in "Idn", with: @patient_aacc_prescription.idn
    fill_in "Patient", with: @patient_aacc_prescription.patient_id
    fill_in "Prescription drugs type", with: @patient_aacc_prescription.prescription_drugs_type_id
    fill_in "Value", with: @patient_aacc_prescription.value
    click_on "Create Patient aacc prescription"

    assert_text "Patient aacc prescription was successfully created"
    click_on "Back"
  end

  test "updating a Patient aacc prescription" do
    visit patient_aacc_prescriptions_url
    click_on "Edit", match: :first

    fill_in "Aacc", with: @patient_aacc_prescription.aacc_id
    fill_in "Id physician", with: @patient_aacc_prescription.id_physician
    fill_in "Idn", with: @patient_aacc_prescription.idn
    fill_in "Patient", with: @patient_aacc_prescription.patient_id
    fill_in "Prescription drugs type", with: @patient_aacc_prescription.prescription_drugs_type_id
    fill_in "Value", with: @patient_aacc_prescription.value
    click_on "Update Patient aacc prescription"

    assert_text "Patient aacc prescription was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient aacc prescription" do
    visit patient_aacc_prescriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient aacc prescription was successfully destroyed"
  end
end
