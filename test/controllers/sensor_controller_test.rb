require 'test_helper'

class SensorControllerTest < ActionController::TestCase
  test "should get temperature" do
    get :temperature
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
