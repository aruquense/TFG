require "test_helper"

class ActivityTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_type = activity_types(:one)
  end

  test "should get index" do
    get activity_types_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_type_url
    assert_response :success
  end

  test "should create activity_type" do
    assert_difference('ActivityType.count') do
      post activity_types_url, params: { activity_type: { code: @activity_type.code, description: @activity_type.description, description_EN: @activity_type.description_EN, idn: @activity_type.idn } }
    end

    assert_redirected_to activity_type_url(ActivityType.last)
  end

  test "should show activity_type" do
    get activity_type_url(@activity_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_type_url(@activity_type)
    assert_response :success
  end

  test "should update activity_type" do
    patch activity_type_url(@activity_type), params: { activity_type: { code: @activity_type.code, description: @activity_type.description, description_EN: @activity_type.description_EN, idn: @activity_type.idn } }
    assert_redirected_to activity_type_url(@activity_type)
  end

  test "should destroy activity_type" do
    assert_difference('ActivityType.count', -1) do
      delete activity_type_url(@activity_type)
    end

    assert_redirected_to activity_types_url
  end
end
