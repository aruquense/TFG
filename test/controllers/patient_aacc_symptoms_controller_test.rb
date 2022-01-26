require "test_helper"

class PatientAaccSymptomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_aacc_symptom = patient_aacc_symptoms(:one)
  end

  test "should get index" do
    get patient_aacc_symptoms_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_aacc_symptom_url
    assert_response :success
  end

  test "should create patient_aacc_symptom" do
    assert_difference('PatientAaccSymptom.count') do
      post patient_aacc_symptoms_url, params: { patient_aacc_symptom: { aacc_id: @patient_aacc_symptom.aacc_id, idn: @patient_aacc_symptom.idn } }
    end

    assert_redirected_to patient_aacc_symptom_url(PatientAaccSymptom.last)
  end

  test "should show patient_aacc_symptom" do
    get patient_aacc_symptom_url(@patient_aacc_symptom)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_aacc_symptom_url(@patient_aacc_symptom)
    assert_response :success
  end

  test "should update patient_aacc_symptom" do
    patch patient_aacc_symptom_url(@patient_aacc_symptom), params: { patient_aacc_symptom: { aacc_id: @patient_aacc_symptom.aacc_id, idn: @patient_aacc_symptom.idn } }
    assert_redirected_to patient_aacc_symptom_url(@patient_aacc_symptom)
  end

  test "should destroy patient_aacc_symptom" do
    assert_difference('PatientAaccSymptom.count', -1) do
      delete patient_aacc_symptom_url(@patient_aacc_symptom)
    end

    assert_redirected_to patient_aacc_symptoms_url
  end
end
