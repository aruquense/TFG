require "test_helper"

class DiagnosisDementiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diagnosis_dementium = diagnosis_dementia(:one)
  end

  test "should get index" do
    get diagnosis_dementia_url
    assert_response :success
  end

  test "should get new" do
    get new_diagnosis_dementium_url
    assert_response :success
  end

  test "should create diagnosis_dementium" do
    assert_difference('DiagnosisDementium.count') do
      post diagnosis_dementia_url, params: { diagnosis_dementium: { description: @diagnosis_dementium.description, description_EN: @diagnosis_dementium.description_EN, erase: @diagnosis_dementium.erase, idn: @diagnosis_dementium.idn } }
    end

    assert_redirected_to diagnosis_dementium_url(DiagnosisDementium.last)
  end

  test "should show diagnosis_dementium" do
    get diagnosis_dementium_url(@diagnosis_dementium)
    assert_response :success
  end

  test "should get edit" do
    get edit_diagnosis_dementium_url(@diagnosis_dementium)
    assert_response :success
  end

  test "should update diagnosis_dementium" do
    patch diagnosis_dementium_url(@diagnosis_dementium), params: { diagnosis_dementium: { description: @diagnosis_dementium.description, description_EN: @diagnosis_dementium.description_EN, erase: @diagnosis_dementium.erase, idn: @diagnosis_dementium.idn } }
    assert_redirected_to diagnosis_dementium_url(@diagnosis_dementium)
  end

  test "should destroy diagnosis_dementium" do
    assert_difference('DiagnosisDementium.count', -1) do
      delete diagnosis_dementium_url(@diagnosis_dementium)
    end

    assert_redirected_to diagnosis_dementia_url
  end
end
