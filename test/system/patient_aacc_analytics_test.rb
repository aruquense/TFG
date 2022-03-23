require "application_system_test_case"

class PatientAaccAnalyticsTest < ApplicationSystemTestCase
  setup do
    @patient_aacc_analytic = patient_aacc_analytics(:one)
  end

  test "visiting the index" do
    visit patient_aacc_analytics_url
    assert_selector "h1", text: "Patient Aacc Analytics"
  end

  test "creating a Patient aacc analytic" do
    visit patient_aacc_analytics_url
    click_on "New Patient Aacc Analytic"

    fill_in "Aacc", with: @patient_aacc_analytic.aacc_id
    fill_in "Analytics", with: @patient_aacc_analytic.analytics_id
    fill_in "Idn", with: @patient_aacc_analytic.idn
    fill_in "Parameter", with: @patient_aacc_analytic.parameter_id
    fill_in "Patient", with: @patient_aacc_analytic.patient_id
    fill_in "Physycian eval", with: @patient_aacc_analytic.physycian_eval
    fill_in "Value", with: @patient_aacc_analytic.value
    click_on "Create Patient aacc analytic"

    assert_text "Patient aacc analytic was successfully created"
    click_on "Back"
  end

  test "updating a Patient aacc analytic" do
    visit patient_aacc_analytics_url
    click_on "Edit", match: :first

    fill_in "Aacc", with: @patient_aacc_analytic.aacc_id
    fill_in "Analytics", with: @patient_aacc_analytic.analytics_id
    fill_in "Idn", with: @patient_aacc_analytic.idn
    fill_in "Parameter", with: @patient_aacc_analytic.parameter_id
    fill_in "Patient", with: @patient_aacc_analytic.patient_id
    fill_in "Physycian eval", with: @patient_aacc_analytic.physycian_eval
    fill_in "Value", with: @patient_aacc_analytic.value
    click_on "Update Patient aacc analytic"

    assert_text "Patient aacc analytic was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient aacc analytic" do
    visit patient_aacc_analytics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient aacc analytic was successfully destroyed"
  end
end
