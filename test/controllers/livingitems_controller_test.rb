require 'test_helper'

class LivingitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @livingitem = livingitems(:one)
  end

  test "should get index" do
    get livingitems_url
    assert_response :success
  end

  test "should get new" do
    get new_livingitem_url
    assert_response :success
  end

  test "should create livingitem" do
    assert_difference('Livingitem.count') do
      post livingitems_url, params: { livingitem: { des: @livingitem.des, name: @livingitem.name, remark: @livingitem.remark } }
    end

    assert_redirected_to livingitem_url(Livingitem.last)
  end

  test "should show livingitem" do
    get livingitem_url(@livingitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_livingitem_url(@livingitem)
    assert_response :success
  end

  test "should update livingitem" do
    patch livingitem_url(@livingitem), params: { livingitem: { des: @livingitem.des, name: @livingitem.name, remark: @livingitem.remark } }
    assert_redirected_to livingitem_url(@livingitem)
  end

  test "should destroy livingitem" do
    assert_difference('Livingitem.count', -1) do
      delete livingitem_url(@livingitem)
    end

    assert_redirected_to livingitems_url
  end
end
