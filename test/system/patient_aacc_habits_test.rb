require "application_system_test_case"

class PatientAaccHabitsTest < ApplicationSystemTestCase
  setup do
    @patient_aacc_habit = patient_aacc_habits(:one)
  end

  test "visiting the index" do
    visit patient_aacc_habits_url
    assert_selector "h1", text: "Patient Aacc Habits"
  end

  test "creating a Patient aacc habit" do
    visit patient_aacc_habits_url
    click_on "New Patient Aacc Habit"

    fill_in "Aacc", with: @patient_aacc_habit.aacc_id
    fill_in "Comments", with: @patient_aacc_habit.comments
    fill_in "Habit", with: @patient_aacc_habit.habit
    fill_in "Idn", with: @patient_aacc_habit.idn
    fill_in "Patient", with: @patient_aacc_habit.patient_id
    click_on "Create Patient aacc habit"

    assert_text "Patient aacc habit was successfully created"
    click_on "Back"
  end

  test "updating a Patient aacc habit" do
    visit patient_aacc_habits_url
    click_on "Edit", match: :first

    fill_in "Aacc", with: @patient_aacc_habit.aacc_id
    fill_in "Comments", with: @patient_aacc_habit.comments
    fill_in "Habit", with: @patient_aacc_habit.habit
    fill_in "Idn", with: @patient_aacc_habit.idn
    fill_in "Patient", with: @patient_aacc_habit.patient_id
    click_on "Update Patient aacc habit"

    assert_text "Patient aacc habit was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient aacc habit" do
    visit patient_aacc_habits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient aacc habit was successfully destroyed"
  end
end
