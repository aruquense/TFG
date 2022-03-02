require "application_system_test_case"

class ExplorationTypesTest < ApplicationSystemTestCase
  setup do
    @exploration_type = exploration_types(:one)
  end

  test "visiting the index" do
    visit exploration_types_url
    assert_selector "h1", text: "Exploration Types"
  end

  test "creating a Exploration type" do
    visit exploration_types_url
    click_on "New Exploration Type"

    fill_in "Description", with: @exploration_type.description
    fill_in "Description en", with: @exploration_type.description_EN
    fill_in "Idn", with: @exploration_type.idn
    click_on "Create Exploration type"

    assert_text "Exploration type was successfully created"
    click_on "Back"
  end

  test "updating a Exploration type" do
    visit exploration_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @exploration_type.description
    fill_in "Description en", with: @exploration_type.description_EN
    fill_in "Idn", with: @exploration_type.idn
    click_on "Update Exploration type"

    assert_text "Exploration type was successfully updated"
    click_on "Back"
  end

  test "destroying a Exploration type" do
    visit exploration_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exploration type was successfully destroyed"
  end
end
