require "application_system_test_case"

class ComplementaryTestsTest < ApplicationSystemTestCase
  setup do
    @complementary_test = complementary_tests(:one)
  end

  test "visiting the index" do
    visit complementary_tests_url
    assert_selector "h1", text: "Complementary Tests"
  end

  test "creating a Complementary test" do
    visit complementary_tests_url
    click_on "New Complementary Test"

    fill_in "Complementary tests type", with: @complementary_test.complementary_tests_type_id
    fill_in "Id type", with: @complementary_test.id_type
    fill_in "Idn", with: @complementary_test.idn
    fill_in "Intervalues", with: @complementary_test.intervalues
    fill_in "Parameter", with: @complementary_test.parameter
    fill_in "Parameter en", with: @complementary_test.parameter_en
    fill_in "Unit", with: @complementary_test.unit
    click_on "Create Complementary test"

    assert_text "Complementary test was successfully created"
    click_on "Back"
  end

  test "updating a Complementary test" do
    visit complementary_tests_url
    click_on "Edit", match: :first

    fill_in "Complementary tests type", with: @complementary_test.complementary_tests_type_id
    fill_in "Id type", with: @complementary_test.id_type
    fill_in "Idn", with: @complementary_test.idn
    fill_in "Intervalues", with: @complementary_test.intervalues
    fill_in "Parameter", with: @complementary_test.parameter
    fill_in "Parameter en", with: @complementary_test.parameter_en
    fill_in "Unit", with: @complementary_test.unit
    click_on "Update Complementary test"

    assert_text "Complementary test was successfully updated"
    click_on "Back"
  end

  test "destroying a Complementary test" do
    visit complementary_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complementary test was successfully destroyed"
  end
end
