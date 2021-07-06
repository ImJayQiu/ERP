require 'test_helper'

class MedicalsuppliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medicalsupply = medicalsupplies(:one)
  end

  test "should get index" do
    get medicalsupplies_url
    assert_response :success
  end

  test "should get new" do
    get new_medicalsupply_url
    assert_response :success
  end

  test "should create medicalsupply" do
    assert_difference('Medicalsupply.count') do
      post medicalsupplies_url, params: { medicalsupply: { date: @medicalsupply.date, item: @medicalsupply.item, province: @medicalsupply.province, quantity: @medicalsupply.quantity, remark: @medicalsupply.remark, unit: @medicalsupply.unit } }
    end

    assert_redirected_to medicalsupply_url(Medicalsupply.last)
  end

  test "should show medicalsupply" do
    get medicalsupply_url(@medicalsupply)
    assert_response :success
  end

  test "should get edit" do
    get edit_medicalsupply_url(@medicalsupply)
    assert_response :success
  end

  test "should update medicalsupply" do
    patch medicalsupply_url(@medicalsupply), params: { medicalsupply: { date: @medicalsupply.date, item: @medicalsupply.item, province: @medicalsupply.province, quantity: @medicalsupply.quantity, remark: @medicalsupply.remark, unit: @medicalsupply.unit } }
    assert_redirected_to medicalsupply_url(@medicalsupply)
  end

  test "should destroy medicalsupply" do
    assert_difference('Medicalsupply.count', -1) do
      delete medicalsupply_url(@medicalsupply)
    end

    assert_redirected_to medicalsupplies_url
  end
end
