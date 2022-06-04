require "application_system_test_case"

class ComplementaryTestsTypesTest < ApplicationSystemTestCase
  setup do
    @complementary_tests_type = complementary_tests_types(:one)
  end

  test "visiting the index" do
    visit complementary_tests_types_url
    assert_selector "h1", text: "Complementary Tests Types"
  end

  test "creating a Complementary tests type" do
    visit complementary_tests_types_url
    click_on "New Complementary Tests Type"

    fill_in "Description", with: @complementary_tests_type.description
    fill_in "Description en", with: @complementary_tests_type.description_en
    fill_in "Idn", with: @complementary_tests_type.idn
    click_on "Create Complementary tests type"

    assert_text "Complementary tests type was successfully created"
    click_on "Back"
  end

  test "updating a Complementary tests type" do
    visit complementary_tests_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @complementary_tests_type.description
    fill_in "Description en", with: @complementary_tests_type.description_en
    fill_in "Idn", with: @complementary_tests_type.idn
    click_on "Update Complementary tests type"

    assert_text "Complementary tests type was successfully updated"
    click_on "Back"
  end

  test "destroying a Complementary tests type" do
    visit complementary_tests_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complementary tests type was successfully destroyed"
  end
end
