require "test_helper"

class AnalyticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analytic = analytics(:one)
  end

  test "should get index" do
    get analytics_url
    assert_response :success
  end

  test "should get new" do
    get new_analytic_url
    assert_response :success
  end

  test "should create analytic" do
    assert_difference('Analytic.count') do
      post analytics_url, params: { analytic: { aacc_id: @analytic.aacc_id, analytics_status_id: @analytic.analytics_status_id, idn: @analytic.idn, patient_id: @analytic.patient_id, physician_eval: @analytic.physician_eval, physician_id: @analytic.physician_id, received_date: @analytic.received_date, type_id: @analytic.type_id, value: @analytic.value } }
    end

    assert_redirected_to analytic_url(Analytic.last)
  end

  test "should show analytic" do
    get analytic_url(@analytic)
    assert_response :success
  end

  test "should get edit" do
    get edit_analytic_url(@analytic)
    assert_response :success
  end

  test "should update analytic" do
    patch analytic_url(@analytic), params: { analytic: { aacc_id: @analytic.aacc_id, analytics_status_id: @analytic.analytics_status_id, idn: @analytic.idn, patient_id: @analytic.patient_id, physician_eval: @analytic.physician_eval, physician_id: @analytic.physician_id, received_date: @analytic.received_date, type_id: @analytic.type_id, value: @analytic.value } }
    assert_redirected_to analytic_url(@analytic)
  end

  test "should destroy analytic" do
    assert_difference('Analytic.count', -1) do
      delete analytic_url(@analytic)
    end

    assert_redirected_to analytics_url
  end
end
