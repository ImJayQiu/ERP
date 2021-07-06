require 'test_helper'

class CountryinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @countryinfo = countryinfos(:one)
  end

  test "should get index" do
    get countryinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_countryinfo_url
    assert_response :success
  end

  test "should create countryinfo" do
    assert_difference('Countryinfo.count') do
      post countryinfos_url, params: { countryinfo: { ISO: @countryinfo.ISO, lat: @countryinfo.lat, lon: @countryinfo.lon, name: @countryinfo.name, remark: @countryinfo.remark, zoom: @countryinfo.zoom } }
    end

    assert_redirected_to countryinfo_url(Countryinfo.last)
  end

  test "should show countryinfo" do
    get countryinfo_url(@countryinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_countryinfo_url(@countryinfo)
    assert_response :success
  end

  test "should update countryinfo" do
    patch countryinfo_url(@countryinfo), params: { countryinfo: { ISO: @countryinfo.ISO, lat: @countryinfo.lat, lon: @countryinfo.lon, name: @countryinfo.name, remark: @countryinfo.remark, zoom: @countryinfo.zoom } }
    assert_redirected_to countryinfo_url(@countryinfo)
  end

  test "should destroy countryinfo" do
    assert_difference('Countryinfo.count', -1) do
      delete countryinfo_url(@countryinfo)
    end

    assert_redirected_to countryinfos_url
  end
end
