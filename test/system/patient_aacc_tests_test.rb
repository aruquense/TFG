require "application_system_test_case"

class PatientAaccTestsTest < ApplicationSystemTestCase
  setup do
    @patient_aacc_test = patient_aacc_tests(:one)
  end

  test "visiting the index" do
    visit patient_aacc_tests_url
    assert_selector "h1", text: "Patient Aacc Tests"
  end

  test "creating a Patient aacc test" do
    visit patient_aacc_tests_url
    click_on "New Patient Aacc Test"

    fill_in "Aacc", with: @patient_aacc_test.aacc_id
    fill_in "Answers", with: @patient_aacc_test.answers
    fill_in "Exploration type", with: @patient_aacc_test.exploration_type_id
    fill_in "Idn", with: @patient_aacc_test.idn
    fill_in "Patient", with: @patient_aacc_test.patient_id
    fill_in "Score", with: @patient_aacc_test.score
    fill_in "Test", with: @patient_aacc_test.test_id
    click_on "Create Patient aacc test"

    assert_text "Patient aacc test was successfully created"
    click_on "Back"
  end

  test "updating a Patient aacc test" do
    visit patient_aacc_tests_url
    click_on "Edit", match: :first

    fill_in "Aacc", with: @patient_aacc_test.aacc_id
    fill_in "Answers", with: @patient_aacc_test.answers
    fill_in "Exploration type", with: @patient_aacc_test.exploration_type_id
    fill_in "Idn", with: @patient_aacc_test.idn
    fill_in "Patient", with: @patient_aacc_test.patient_id
    fill_in "Score", with: @patient_aacc_test.score
    fill_in "Test", with: @patient_aacc_test.test_id
    click_on "Update Patient aacc test"

    assert_text "Patient aacc test was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient aacc test" do
    visit patient_aacc_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient aacc test was successfully destroyed"
  end
end
