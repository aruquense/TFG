require "test_helper"

class PatientAaccHabitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_aacc_habit = patient_aacc_habits(:one)
  end

  test "should get index" do
    get patient_aacc_habits_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_aacc_habit_url
    assert_response :success
  end

  test "should create patient_aacc_habit" do
    assert_difference('PatientAaccHabit.count') do
      post patient_aacc_habits_url, params: { patient_aacc_habit: { aacc_id: @patient_aacc_habit.aacc_id, comments: @patient_aacc_habit.comments, habit: @patient_aacc_habit.habit, idn: @patient_aacc_habit.idn, patient_id: @patient_aacc_habit.patient_id } }
    end

    assert_redirected_to patient_aacc_habit_url(PatientAaccHabit.last)
  end

  test "should show patient_aacc_habit" do
    get patient_aacc_habit_url(@patient_aacc_habit)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_aacc_habit_url(@patient_aacc_habit)
    assert_response :success
  end

  test "should update patient_aacc_habit" do
    patch patient_aacc_habit_url(@patient_aacc_habit), params: { patient_aacc_habit: { aacc_id: @patient_aacc_habit.aacc_id, comments: @patient_aacc_habit.comments, habit: @patient_aacc_habit.habit, idn: @patient_aacc_habit.idn, patient_id: @patient_aacc_habit.patient_id } }
    assert_redirected_to patient_aacc_habit_url(@patient_aacc_habit)
  end

  test "should destroy patient_aacc_habit" do
    assert_difference('PatientAaccHabit.count', -1) do
      delete patient_aacc_habit_url(@patient_aacc_habit)
    end

    assert_redirected_to patient_aacc_habits_url
  end
end
