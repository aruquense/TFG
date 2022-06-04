require "test_helper"

class ComplementaryTestsTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complementary_tests_type = complementary_tests_types(:one)
  end

  test "should get index" do
    get complementary_tests_types_url
    assert_response :success
  end

  test "should get new" do
    get new_complementary_tests_type_url
    assert_response :success
  end

  test "should create complementary_tests_type" do
    assert_difference('ComplementaryTestsType.count') do
      post complementary_tests_types_url, params: { complementary_tests_type: { description: @complementary_tests_type.description, description_en: @complementary_tests_type.description_en, idn: @complementary_tests_type.idn } }
    end

    assert_redirected_to complementary_tests_type_url(ComplementaryTestsType.last)
  end

  test "should show complementary_tests_type" do
    get complementary_tests_type_url(@complementary_tests_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_complementary_tests_type_url(@complementary_tests_type)
    assert_response :success
  end

  test "should update complementary_tests_type" do
    patch complementary_tests_type_url(@complementary_tests_type), params: { complementary_tests_type: { description: @complementary_tests_type.description, description_en: @complementary_tests_type.description_en, idn: @complementary_tests_type.idn } }
    assert_redirected_to complementary_tests_type_url(@complementary_tests_type)
  end

  test "should destroy complementary_tests_type" do
    assert_difference('ComplementaryTestsType.count', -1) do
      delete complementary_tests_type_url(@complementary_tests_type)
    end

    assert_redirected_to complementary_tests_types_url
  end
end
