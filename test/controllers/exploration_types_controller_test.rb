require "test_helper"

class ExplorationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exploration_type = exploration_types(:one)
  end

  test "should get index" do
    get exploration_types_url
    assert_response :success
  end

  test "should get new" do
    get new_exploration_type_url
    assert_response :success
  end

  test "should create exploration_type" do
    assert_difference('ExplorationType.count') do
      post exploration_types_url, params: { exploration_type: { description: @exploration_type.description, description_EN: @exploration_type.description_EN, idn: @exploration_type.idn } }
    end

    assert_redirected_to exploration_type_url(ExplorationType.last)
  end

  test "should show exploration_type" do
    get exploration_type_url(@exploration_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_exploration_type_url(@exploration_type)
    assert_response :success
  end

  test "should update exploration_type" do
    patch exploration_type_url(@exploration_type), params: { exploration_type: { description: @exploration_type.description, description_EN: @exploration_type.description_EN, idn: @exploration_type.idn } }
    assert_redirected_to exploration_type_url(@exploration_type)
  end

  test "should destroy exploration_type" do
    assert_difference('ExplorationType.count', -1) do
      delete exploration_type_url(@exploration_type)
    end

    assert_redirected_to exploration_types_url
  end
end
