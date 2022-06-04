require "test_helper"

class ComplementaryTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complementary_test = complementary_tests(:one)
  end

  test "should get index" do
    get complementary_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_complementary_test_url
    assert_response :success
  end

  test "should create complementary_test" do
    assert_difference('ComplementaryTest.count') do
      post complementary_tests_url, params: { complementary_test: { complementary_tests_type_id: @complementary_test.complementary_tests_type_id, id_type: @complementary_test.id_type, idn: @complementary_test.idn, intervalues: @complementary_test.intervalues, parameter: @complementary_test.parameter, parameter_en: @complementary_test.parameter_en, unit: @complementary_test.unit } }
    end

    assert_redirected_to complementary_test_url(ComplementaryTest.last)
  end

  test "should show complementary_test" do
    get complementary_test_url(@complementary_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_complementary_test_url(@complementary_test)
    assert_response :success
  end

  test "should update complementary_test" do
    patch complementary_test_url(@complementary_test), params: { complementary_test: { complementary_tests_type_id: @complementary_test.complementary_tests_type_id, id_type: @complementary_test.id_type, idn: @complementary_test.idn, intervalues: @complementary_test.intervalues, parameter: @complementary_test.parameter, parameter_en: @complementary_test.parameter_en, unit: @complementary_test.unit } }
    assert_redirected_to complementary_test_url(@complementary_test)
  end

  test "should destroy complementary_test" do
    assert_difference('ComplementaryTest.count', -1) do
      delete complementary_test_url(@complementary_test)
    end

    assert_redirected_to complementary_tests_url
  end
end
