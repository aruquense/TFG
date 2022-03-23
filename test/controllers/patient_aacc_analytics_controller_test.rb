require "test_helper"

class PatientAaccAnalyticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_aacc_analytic = patient_aacc_analytics(:one)
  end

  test "should get index" do
    get patient_aacc_analytics_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_aacc_analytic_url
    assert_response :success
  end

  test "should create patient_aacc_analytic" do
    assert_difference('PatientAaccAnalytic.count') do
      post patient_aacc_analytics_url, params: { patient_aacc_analytic: { aacc_id: @patient_aacc_analytic.aacc_id, analytics_id: @patient_aacc_analytic.analytics_id, idn: @patient_aacc_analytic.idn, parameter_id: @patient_aacc_analytic.parameter_id, patient_id: @patient_aacc_analytic.patient_id, physycian_eval: @patient_aacc_analytic.physycian_eval, value: @patient_aacc_analytic.value } }
    end

    assert_redirected_to patient_aacc_analytic_url(PatientAaccAnalytic.last)
  end

  test "should show patient_aacc_analytic" do
    get patient_aacc_analytic_url(@patient_aacc_analytic)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_aacc_analytic_url(@patient_aacc_analytic)
    assert_response :success
  end

  test "should update patient_aacc_analytic" do
    patch patient_aacc_analytic_url(@patient_aacc_analytic), params: { patient_aacc_analytic: { aacc_id: @patient_aacc_analytic.aacc_id, analytics_id: @patient_aacc_analytic.analytics_id, idn: @patient_aacc_analytic.idn, parameter_id: @patient_aacc_analytic.parameter_id, patient_id: @patient_aacc_analytic.patient_id, physycian_eval: @patient_aacc_analytic.physycian_eval, value: @patient_aacc_analytic.value } }
    assert_redirected_to patient_aacc_analytic_url(@patient_aacc_analytic)
  end

  test "should destroy patient_aacc_analytic" do
    assert_difference('PatientAaccAnalytic.count', -1) do
      delete patient_aacc_analytic_url(@patient_aacc_analytic)
    end

    assert_redirected_to patient_aacc_analytics_url
  end
end
