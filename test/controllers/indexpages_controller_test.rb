require 'test_helper'

class IndexpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indexpage = indexpages(:one)
  end

  test "should get index" do
    get indexpages_url
    assert_response :success
  end

  test "should get new" do
    get new_indexpage_url
    assert_response :success
  end

  test "should create indexpage" do
    assert_difference('Indexpage.count') do
      post indexpages_url, params: { indexpage: { t01: @indexpage.t01, t02: @indexpage.t02, t03: @indexpage.t03, t04: @indexpage.t04, t05: @indexpage.t05, t06: @indexpage.t06, t07: @indexpage.t07, t08: @indexpage.t08, t09: @indexpage.t09, t10: @indexpage.t10, t11: @indexpage.t11, t12: @indexpage.t12, t13: @indexpage.t13, t14: @indexpage.t14, t15: @indexpage.t15, t16: @indexpage.t16, t17: @indexpage.t17, t18: @indexpage.t18, t19: @indexpage.t19, t20: @indexpage.t20, t21: @indexpage.t21, t22: @indexpage.t22, t23: @indexpage.t23, t24: @indexpage.t24, t25: @indexpage.t25, t26: @indexpage.t26, t27: @indexpage.t27, t28: @indexpage.t28, t29: @indexpage.t29, t30: @indexpage.t30 } }
    end

    assert_redirected_to indexpage_url(Indexpage.last)
  end

  test "should show indexpage" do
    get indexpage_url(@indexpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_indexpage_url(@indexpage)
    assert_response :success
  end

  test "should update indexpage" do
    patch indexpage_url(@indexpage), params: { indexpage: { t01: @indexpage.t01, t02: @indexpage.t02, t03: @indexpage.t03, t04: @indexpage.t04, t05: @indexpage.t05, t06: @indexpage.t06, t07: @indexpage.t07, t08: @indexpage.t08, t09: @indexpage.t09, t10: @indexpage.t10, t11: @indexpage.t11, t12: @indexpage.t12, t13: @indexpage.t13, t14: @indexpage.t14, t15: @indexpage.t15, t16: @indexpage.t16, t17: @indexpage.t17, t18: @indexpage.t18, t19: @indexpage.t19, t20: @indexpage.t20, t21: @indexpage.t21, t22: @indexpage.t22, t23: @indexpage.t23, t24: @indexpage.t24, t25: @indexpage.t25, t26: @indexpage.t26, t27: @indexpage.t27, t28: @indexpage.t28, t29: @indexpage.t29, t30: @indexpage.t30 } }
    assert_redirected_to indexpage_url(@indexpage)
  end

  test "should destroy indexpage" do
    assert_difference('Indexpage.count', -1) do
      delete indexpage_url(@indexpage)
    end

    assert_redirected_to indexpages_url
  end
end
