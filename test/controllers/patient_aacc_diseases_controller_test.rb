require "test_helper"

class PatientAaccDiseasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_aacc_disease = patient_aacc_diseases(:one)
  end

  test "should get index" do
    get patient_aacc_diseases_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_aacc_disease_url
    assert_response :success
  end

  test "should create patient_aacc_disease" do
    assert_difference('PatientAaccDisease.count') do
      post patient_aacc_diseases_url, params: { patient_aacc_disease: { description: @patient_aacc_disease.description, description_en: @patient_aacc_disease.description_en, idn: @patient_aacc_disease.idn } }
    end

    assert_redirected_to patient_aacc_disease_url(PatientAaccDisease.last)
  end

  test "should show patient_aacc_disease" do
    get patient_aacc_disease_url(@patient_aacc_disease)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_aacc_disease_url(@patient_aacc_disease)
    assert_response :success
  end

  test "should update patient_aacc_disease" do
    patch patient_aacc_disease_url(@patient_aacc_disease), params: { patient_aacc_disease: { description: @patient_aacc_disease.description, description_en: @patient_aacc_disease.description_en, idn: @patient_aacc_disease.idn } }
    assert_redirected_to patient_aacc_disease_url(@patient_aacc_disease)
  end

  test "should destroy patient_aacc_disease" do
    assert_difference('PatientAaccDisease.count', -1) do
      delete patient_aacc_disease_url(@patient_aacc_disease)
    end

    assert_redirected_to patient_aacc_diseases_url
  end
end
