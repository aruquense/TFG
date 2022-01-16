require "test_helper"

class PatientAaccsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_aacc = patient_aaccs(:one)
  end

  test "should get index" do
    get patient_aaccs_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_aacc_url
    assert_response :success
  end

  test "should create patient_aacc" do
    assert_difference('PatientAacc.count') do
      post patient_aaccs_url, params: { patient_aacc: { Patient_id: @patient_aacc.Patient_id, finished: @patient_aacc.finished, id_activity_type: @patient_aacc.id_activity_type, id_physician: @patient_aacc.id_physician, medicalrecord: @patient_aacc.medicalrecord, observations: @patient_aacc.observations } }
    end

    assert_redirected_to patient_aacc_url(PatientAacc.last)
  end

  test "should show patient_aacc" do
    get patient_aacc_url(@patient_aacc)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_aacc_url(@patient_aacc)
    assert_response :success
  end

  test "should update patient_aacc" do
    patch patient_aacc_url(@patient_aacc), params: { patient_aacc: { Patient_id: @patient_aacc.Patient_id, finished: @patient_aacc.finished, id_activity_type: @patient_aacc.id_activity_type, id_physician: @patient_aacc.id_physician, medicalrecord: @patient_aacc.medicalrecord, observations: @patient_aacc.observations } }
    assert_redirected_to patient_aacc_url(@patient_aacc)
  end

  test "should destroy patient_aacc" do
    assert_difference('PatientAacc.count', -1) do
      delete patient_aacc_url(@patient_aacc)
    end

    assert_redirected_to patient_aaccs_url
  end
end
