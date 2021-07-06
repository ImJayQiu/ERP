require 'test_helper'

class MedicalitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medicalitem = medicalitems(:one)
  end

  test "should get index" do
    get medicalitems_url
    assert_response :success
  end

  test "should get new" do
    get new_medicalitem_url
    assert_response :success
  end

  test "should create medicalitem" do
    assert_difference('Medicalitem.count') do
      post medicalitems_url, params: { medicalitem: { des: @medicalitem.des, name: @medicalitem.name, remark: @medicalitem.remark } }
    end

    assert_redirected_to medicalitem_url(Medicalitem.last)
  end

  test "should show medicalitem" do
    get medicalitem_url(@medicalitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_medicalitem_url(@medicalitem)
    assert_response :success
  end

  test "should update medicalitem" do
    patch medicalitem_url(@medicalitem), params: { medicalitem: { des: @medicalitem.des, name: @medicalitem.name, remark: @medicalitem.remark } }
    assert_redirected_to medicalitem_url(@medicalitem)
  end

  test "should destroy medicalitem" do
    assert_difference('Medicalitem.count', -1) do
      delete medicalitem_url(@medicalitem)
    end

    assert_redirected_to medicalitems_url
  end
end
