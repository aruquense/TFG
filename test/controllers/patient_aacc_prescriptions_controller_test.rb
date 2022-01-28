require "test_helper"

class PatientAaccPrescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_aacc_prescription = patient_aacc_prescriptions(:one)
  end

  test "should get index" do
    get patient_aacc_prescriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_aacc_prescription_url
    assert_response :success
  end

  test "should create patient_aacc_prescription" do
    assert_difference('PatientAaccPrescription.count') do
      post patient_aacc_prescriptions_url, params: { patient_aacc_prescription: { aacc_id: @patient_aacc_prescription.aacc_id, id_physician: @patient_aacc_prescription.id_physician, idn: @patient_aacc_prescription.idn, patient_id: @patient_aacc_prescription.patient_id, prescription_drugs_type_id: @patient_aacc_prescription.prescription_drugs_type_id, value: @patient_aacc_prescription.value } }
    end

    assert_redirected_to patient_aacc_prescription_url(PatientAaccPrescription.last)
  end

  test "should show patient_aacc_prescription" do
    get patient_aacc_prescription_url(@patient_aacc_prescription)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_aacc_prescription_url(@patient_aacc_prescription)
    assert_response :success
  end

  test "should update patient_aacc_prescription" do
    patch patient_aacc_prescription_url(@patient_aacc_prescription), params: { patient_aacc_prescription: { aacc_id: @patient_aacc_prescription.aacc_id, id_physician: @patient_aacc_prescription.id_physician, idn: @patient_aacc_prescription.idn, patient_id: @patient_aacc_prescription.patient_id, prescription_drugs_type_id: @patient_aacc_prescription.prescription_drugs_type_id, value: @patient_aacc_prescription.value } }
    assert_redirected_to patient_aacc_prescription_url(@patient_aacc_prescription)
  end

  test "should destroy patient_aacc_prescription" do
    assert_difference('PatientAaccPrescription.count', -1) do
      delete patient_aacc_prescription_url(@patient_aacc_prescription)
    end

    assert_redirected_to patient_aacc_prescriptions_url
  end
end
