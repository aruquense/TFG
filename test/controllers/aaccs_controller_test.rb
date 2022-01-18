require "test_helper"

class AaccsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aacc = aaccs(:one)
  end

  test "should get index" do
    get aaccs_url
    assert_response :success
  end

  test "should get new" do
    get new_aacc_url
    assert_response :success
  end

  test "should create aacc" do
    assert_difference('Aacc.count') do
      post aaccs_url, params: { aacc: { Patient_id: @aacc.Patient_id, finished: @aacc.finished, id_activity_type: @aacc.id_activity_type, id_physician: @aacc.id_physician, medicalrecord: @aacc.medicalrecord, observations: @aacc.observations } }
    end

    assert_redirected_to aacc_url(Aacc.last)
  end

  test "should show aacc" do
    get aacc_url(@aacc)
    assert_response :success
  end

  test "should get edit" do
    get edit_aacc_url(@aacc)
    assert_response :success
  end

  test "should update aacc" do
    patch aacc_url(@aacc), params: { aacc: { Patient_id: @aacc.Patient_id, finished: @aacc.finished, id_activity_type: @aacc.id_activity_type, id_physician: @aacc.id_physician, medicalrecord: @aacc.medicalrecord, observations: @aacc.observations } }
    assert_redirected_to aacc_url(@aacc)
  end

  test "should destroy aacc" do
    assert_difference('Aacc.count', -1) do
      delete aacc_url(@aacc)
    end

    assert_redirected_to aaccs_url
  end
end
