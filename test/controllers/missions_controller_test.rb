require 'test_helper'

class MissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get missions_index_url
    assert_response :success
  end

  test "should get missions_list" do
    get missions_missions_list_url
    assert_response :success
  end

  test "should get calculate" do
    get missions_calculate_url
    assert_response :success
  end

end
