require "application_system_test_case"

class PrescriptionDrugsTypesTest < ApplicationSystemTestCase
  setup do
    @prescription_drugs_type = prescription_drugs_types(:one)
  end

  test "visiting the index" do
    visit prescription_drugs_types_url
    assert_selector "h1", text: "Prescription Drugs Types"
  end

  test "creating a Prescription drugs type" do
    visit prescription_drugs_types_url
    click_on "New Prescription Drugs Type"

    fill_in "Description", with: @prescription_drugs_type.description
    fill_in "Description en", with: @prescription_drugs_type.description_EN
    fill_in "Idn", with: @prescription_drugs_type.idn
    click_on "Create Prescription drugs type"

    assert_text "Prescription drugs type was successfully created"
    click_on "Back"
  end

  test "updating a Prescription drugs type" do
    visit prescription_drugs_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @prescription_drugs_type.description
    fill_in "Description en", with: @prescription_drugs_type.description_EN
    fill_in "Idn", with: @prescription_drugs_type.idn
    click_on "Update Prescription drugs type"

    assert_text "Prescription drugs type was successfully updated"
    click_on "Back"
  end

  test "destroying a Prescription drugs type" do
    visit prescription_drugs_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prescription drugs type was successfully destroyed"
  end
end
