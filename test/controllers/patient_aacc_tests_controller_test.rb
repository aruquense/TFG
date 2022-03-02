require "test_helper"

class PatientAaccTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_aacc_test = patient_aacc_tests(:one)
  end

  test "should get index" do
    get patient_aacc_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_aacc_test_url
    assert_response :success
  end

  test "should create patient_aacc_test" do
    assert_difference('PatientAaccTest.count') do
      post patient_aacc_tests_url, params: { patient_aacc_test: { aacc_id: @patient_aacc_test.aacc_id, answers: @patient_aacc_test.answers, exploration_type_id: @patient_aacc_test.exploration_type_id, idn: @patient_aacc_test.idn, patient_id: @patient_aacc_test.patient_id, score: @patient_aacc_test.score, test_id: @patient_aacc_test.test_id } }
    end

    assert_redirected_to patient_aacc_test_url(PatientAaccTest.last)
  end

  test "should show patient_aacc_test" do
    get patient_aacc_test_url(@patient_aacc_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_aacc_test_url(@patient_aacc_test)
    assert_response :success
  end

  test "should update patient_aacc_test" do
    patch patient_aacc_test_url(@patient_aacc_test), params: { patient_aacc_test: { aacc_id: @patient_aacc_test.aacc_id, answers: @patient_aacc_test.answers, exploration_type_id: @patient_aacc_test.exploration_type_id, idn: @patient_aacc_test.idn, patient_id: @patient_aacc_test.patient_id, score: @patient_aacc_test.score, test_id: @patient_aacc_test.test_id } }
    assert_redirected_to patient_aacc_test_url(@patient_aacc_test)
  end

  test "should destroy patient_aacc_test" do
    assert_difference('PatientAaccTest.count', -1) do
      delete patient_aacc_test_url(@patient_aacc_test)
    end

    assert_redirected_to patient_aacc_tests_url
  end
end
