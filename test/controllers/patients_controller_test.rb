require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { adress: @patient.adress, birthcity: @patient.birthcity, birthcountry: @patient.birthcountry, birthdate: @patient.birthdate, city: @patient.city, comments: @patient.comments, country: @patient.country, employeestatus: @patient.employeestatus, exitus: @patient.exitus, gender: @patient.gender, incoming_rate_id: @patient.incoming_rate_id, institution_id: @patient.institution_id, maritalstatus: @patient.maritalstatus, medicalcard: @patient.medicalcard, medicalrecord: @patient.medicalrecord, mobilephone: @patient.mobilephone, name: @patient.name, nhc: @patient.nhc, nif: @patient.nif, nss: @patient.nss, passport: @patient.passport, profession: @patient.profession, scholarship: @patient.scholarship, state: @patient.state, surname: @patient.surname, telephone: @patient.telephone, telephone2: @patient.telephone2 } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { adress: @patient.adress, birthcity: @patient.birthcity, birthcountry: @patient.birthcountry, birthdate: @patient.birthdate, city: @patient.city, comments: @patient.comments, country: @patient.country, employeestatus: @patient.employeestatus, exitus: @patient.exitus, gender: @patient.gender, incoming_rate_id: @patient.incoming_rate_id, institution_id: @patient.institution_id, maritalstatus: @patient.maritalstatus, medicalcard: @patient.medicalcard, medicalrecord: @patient.medicalrecord, mobilephone: @patient.mobilephone, name: @patient.name, nhc: @patient.nhc, nif: @patient.nif, nss: @patient.nss, passport: @patient.passport, profession: @patient.profession, scholarship: @patient.scholarship, state: @patient.state, surname: @patient.surname, telephone: @patient.telephone, telephone2: @patient.telephone2 } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
