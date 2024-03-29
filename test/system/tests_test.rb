require "application_system_test_case"

class TestsTest < ApplicationSystemTestCase
  setup do
    @test = tests(:one)
  end

  test "visiting the index" do
    visit tests_url
    assert_selector "h1", text: "Tests"
  end

  test "creating a Test" do
    visit tests_url
    click_on "New Test"

    fill_in "Description", with: @test.description
    fill_in "Description en", with: @test.description_EN
    fill_in "Exploration type", with: @test.exploration_type_id
    fill_in "Idn", with: @test.idn
    click_on "Create Test"

    assert_text "Test was successfully created"
    click_on "Back"
  end

  test "updating a Test" do
    visit tests_url
    click_on "Edit", match: :first

    fill_in "Description", with: @test.description
    fill_in "Description en", with: @test.description_EN
    fill_in "Exploration type", with: @test.exploration_type_id
    fill_in "Idn", with: @test.idn
    click_on "Update Test"

    assert_text "Test was successfully updated"
    click_on "Back"
  end

  test "destroying a Test" do
    visit tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test was successfully destroyed"
  end
end
