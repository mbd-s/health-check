require 'test_helper'

class HealthControllerTest < ActionDispatch::IntegrationTest
  test "should get good" do
    get health_good_url
    assert_response :success
  end

  test "should get bad" do
    get health_bad_url
    assert_response :success
  end

  test "should get check" do
    get health_check_url
    assert_response :success
  end

end
