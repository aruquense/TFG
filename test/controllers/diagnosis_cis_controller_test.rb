require "test_helper"

class DiagnosisCisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diagnosis_ci = diagnosis_cis(:one)
  end

  test "should get index" do
    get diagnosis_cis_url
    assert_response :success
  end

  test "should get new" do
    get new_diagnosis_ci_url
    assert_response :success
  end

  test "should create diagnosis_ci" do
    assert_difference('DiagnosisCi.count') do
      post diagnosis_cis_url, params: { diagnosis_ci: { description: @diagnosis_ci.description, description_EN: @diagnosis_ci.description_EN, erase: @diagnosis_ci.erase, idn: @diagnosis_ci.idn } }
    end

    assert_redirected_to diagnosis_ci_url(DiagnosisCi.last)
  end

  test "should show diagnosis_ci" do
    get diagnosis_ci_url(@diagnosis_ci)
    assert_response :success
  end

  test "should get edit" do
    get edit_diagnosis_ci_url(@diagnosis_ci)
    assert_response :success
  end

  test "should update diagnosis_ci" do
    patch diagnosis_ci_url(@diagnosis_ci), params: { diagnosis_ci: { description: @diagnosis_ci.description, description_EN: @diagnosis_ci.description_EN, erase: @diagnosis_ci.erase, idn: @diagnosis_ci.idn } }
    assert_redirected_to diagnosis_ci_url(@diagnosis_ci)
  end

  test "should destroy diagnosis_ci" do
    assert_difference('DiagnosisCi.count', -1) do
      delete diagnosis_ci_url(@diagnosis_ci)
    end

    assert_redirected_to diagnosis_cis_url
  end
end
