require "test_helper"

class Driver::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get driver_dashboard_index_url
    assert_response :success
  end
end
