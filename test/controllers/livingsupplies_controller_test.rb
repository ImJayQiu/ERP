require 'test_helper'

class LivingsuppliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @livingsupply = livingsupplies(:one)
  end

  test "should get index" do
    get livingsupplies_url
    assert_response :success
  end

  test "should get new" do
    get new_livingsupply_url
    assert_response :success
  end

  test "should create livingsupply" do
    assert_difference('Livingsupply.count') do
      post livingsupplies_url, params: { livingsupply: { date: @livingsupply.date, item: @livingsupply.item, province: @livingsupply.province, quantity: @livingsupply.quantity, remark: @livingsupply.remark, unit: @livingsupply.unit } }
    end

    assert_redirected_to livingsupply_url(Livingsupply.last)
  end

  test "should show livingsupply" do
    get livingsupply_url(@livingsupply)
    assert_response :success
  end

  test "should get edit" do
    get edit_livingsupply_url(@livingsupply)
    assert_response :success
  end

  test "should update livingsupply" do
    patch livingsupply_url(@livingsupply), params: { livingsupply: { date: @livingsupply.date, item: @livingsupply.item, province: @livingsupply.province, quantity: @livingsupply.quantity, remark: @livingsupply.remark, unit: @livingsupply.unit } }
    assert_redirected_to livingsupply_url(@livingsupply)
  end

  test "should destroy livingsupply" do
    assert_difference('Livingsupply.count', -1) do
      delete livingsupply_url(@livingsupply)
    end

    assert_redirected_to livingsupplies_url
  end
end
