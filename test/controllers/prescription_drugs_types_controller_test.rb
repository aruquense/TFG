require "test_helper"

class PrescriptionDrugsTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prescription_drugs_type = prescription_drugs_types(:one)
  end

  test "should get index" do
    get prescription_drugs_types_url
    assert_response :success
  end

  test "should get new" do
    get new_prescription_drugs_type_url
    assert_response :success
  end

  test "should create prescription_drugs_type" do
    assert_difference('PrescriptionDrugsType.count') do
      post prescription_drugs_types_url, params: { prescription_drugs_type: { description: @prescription_drugs_type.description, description_EN: @prescription_drugs_type.description_EN, idn: @prescription_drugs_type.idn } }
    end

    assert_redirected_to prescription_drugs_type_url(PrescriptionDrugsType.last)
  end

  test "should show prescription_drugs_type" do
    get prescription_drugs_type_url(@prescription_drugs_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_prescription_drugs_type_url(@prescription_drugs_type)
    assert_response :success
  end

  test "should update prescription_drugs_type" do
    patch prescription_drugs_type_url(@prescription_drugs_type), params: { prescription_drugs_type: { description: @prescription_drugs_type.description, description_EN: @prescription_drugs_type.description_EN, idn: @prescription_drugs_type.idn } }
    assert_redirected_to prescription_drugs_type_url(@prescription_drugs_type)
  end

  test "should destroy prescription_drugs_type" do
    assert_difference('PrescriptionDrugsType.count', -1) do
      delete prescription_drugs_type_url(@prescription_drugs_type)
    end

    assert_redirected_to prescription_drugs_types_url
  end
end
