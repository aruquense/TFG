require "application_system_test_case"

class AnalyticsTest < ApplicationSystemTestCase
  setup do
    @analytic = analytics(:one)
  end

  test "visiting the index" do
    visit analytics_url
    assert_selector "h1", text: "Analytics"
  end

  test "creating a Analytic" do
    visit analytics_url
    click_on "New Analytic"

    fill_in "Aacc", with: @analytic.aacc_id
    fill_in "Analytics status", with: @analytic.analytics_status_id
    fill_in "Idn", with: @analytic.idn
    fill_in "Patient", with: @analytic.patient_id
    fill_in "Physician eval", with: @analytic.physician_eval
    fill_in "Physician", with: @analytic.physician_id
    fill_in "Received date", with: @analytic.received_date
    fill_in "Type", with: @analytic.type_id
    fill_in "Value", with: @analytic.value
    click_on "Create Analytic"

    assert_text "Analytic was successfully created"
    click_on "Back"
  end

  test "updating a Analytic" do
    visit analytics_url
    click_on "Edit", match: :first

    fill_in "Aacc", with: @analytic.aacc_id
    fill_in "Analytics status", with: @analytic.analytics_status_id
    fill_in "Idn", with: @analytic.idn
    fill_in "Patient", with: @analytic.patient_id
    fill_in "Physician eval", with: @analytic.physician_eval
    fill_in "Physician", with: @analytic.physician_id
    fill_in "Received date", with: @analytic.received_date
    fill_in "Type", with: @analytic.type_id
    fill_in "Value", with: @analytic.value
    click_on "Update Analytic"

    assert_text "Analytic was successfully updated"
    click_on "Back"
  end

  test "destroying a Analytic" do
    visit analytics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Analytic was successfully destroyed"
  end
end
