require 'test_helper'

class ArmiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @army = armies(:one)
  end

  test "should get index" do
    get armies_url
    assert_response :success
  end

  test "should get new" do
    get new_army_url
    assert_response :success
  end

  test "should create army" do
    assert_difference('Army.count') do
      post armies_url, params: { army: { aid: @army.aid, armour: @army.armour, armytype: @army.armytype, boat: @army.boat, cavalry: @army.cavalry, flagship: @army.flagship, infantry: @army.infantry, kingdom: @army.kingdom, location: @army.location, lord: @army.lord, marine: @army.marine, mission: @army.mission, morale: @army.morale, name: @army.name, notes: @army.notes, num: @army.num, position: @army.position, status: @army.status, vet: @army.vet, visibility: @army.visibility, visible: @army.visible } }
    end

    assert_redirected_to army_url(Army.last)
  end

  test "should show army" do
    get army_url(@army)
    assert_response :success
  end

  test "should get edit" do
    get edit_army_url(@army)
    assert_response :success
  end

  test "should update army" do
    patch army_url(@army), params: { army: { aid: @army.aid, armour: @army.armour, armytype: @army.armytype, boat: @army.boat, cavalry: @army.cavalry, flagship: @army.flagship, infantry: @army.infantry, kingdom: @army.kingdom, location: @army.location, lord: @army.lord, marine: @army.marine, mission: @army.mission, morale: @army.morale, name: @army.name, notes: @army.notes, num: @army.num, position: @army.position, status: @army.status, vet: @army.vet, visibility: @army.visibility, visible: @army.visible } }
    assert_redirected_to army_url(@army)
  end

  test "should destroy army" do
    assert_difference('Army.count', -1) do
      delete army_url(@army)
    end

    assert_redirected_to armies_url
  end
end
