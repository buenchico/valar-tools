require 'test_helper'

class TravelCalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get travel_calculator_index_url
    assert_response :success
  end

  test "should get calculate" do
    get travel_calculator_calculate_url
    assert_response :success
  end

end
