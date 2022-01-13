require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "creating a Patient" do
    visit patients_url
    click_on "New Patient"

    fill_in "Adress", with: @patient.adress
    fill_in "Birthcity", with: @patient.birthcity
    fill_in "Birthcountry", with: @patient.birthcountry
    fill_in "Birthdate", with: @patient.birthdate
    fill_in "City", with: @patient.city
    fill_in "Comments", with: @patient.comments
    fill_in "Country", with: @patient.country
    fill_in "Employeestatus", with: @patient.employeestatus
    fill_in "Exitus", with: @patient.exitus
    fill_in "Gender", with: @patient.gender
    fill_in "Incoming rate", with: @patient.incoming_rate_id
    fill_in "Institution", with: @patient.institution_id
    fill_in "Maritalstatus", with: @patient.maritalstatus
    fill_in "Medicalcard", with: @patient.medicalcard
    fill_in "Medicalrecord", with: @patient.medicalrecord
    fill_in "Mobilephone", with: @patient.mobilephone
    fill_in "Name", with: @patient.name
    fill_in "Nhc", with: @patient.nhc
    fill_in "Nif", with: @patient.nif
    fill_in "Nss", with: @patient.nss
    fill_in "Passport", with: @patient.passport
    fill_in "Profession", with: @patient.profession
    fill_in "Scholarship", with: @patient.scholarship
    fill_in "State", with: @patient.state
    fill_in "Surname", with: @patient.surname
    fill_in "Telephone", with: @patient.telephone
    fill_in "Telephone2", with: @patient.telephone2
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "updating a Patient" do
    visit patients_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @patient.adress
    fill_in "Birthcity", with: @patient.birthcity
    fill_in "Birthcountry", with: @patient.birthcountry
    fill_in "Birthdate", with: @patient.birthdate
    fill_in "City", with: @patient.city
    fill_in "Comments", with: @patient.comments
    fill_in "Country", with: @patient.country
    fill_in "Employeestatus", with: @patient.employeestatus
    fill_in "Exitus", with: @patient.exitus
    fill_in "Gender", with: @patient.gender
    fill_in "Incoming rate", with: @patient.incoming_rate_id
    fill_in "Institution", with: @patient.institution_id
    fill_in "Maritalstatus", with: @patient.maritalstatus
    fill_in "Medicalcard", with: @patient.medicalcard
    fill_in "Medicalrecord", with: @patient.medicalrecord
    fill_in "Mobilephone", with: @patient.mobilephone
    fill_in "Name", with: @patient.name
    fill_in "Nhc", with: @patient.nhc
    fill_in "Nif", with: @patient.nif
    fill_in "Nss", with: @patient.nss
    fill_in "Passport", with: @patient.passport
    fill_in "Profession", with: @patient.profession
    fill_in "Scholarship", with: @patient.scholarship
    fill_in "State", with: @patient.state
    fill_in "Surname", with: @patient.surname
    fill_in "Telephone", with: @patient.telephone
    fill_in "Telephone2", with: @patient.telephone2
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient" do
    visit patients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient was successfully destroyed"
  end
end
