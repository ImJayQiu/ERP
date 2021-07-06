require 'test_helper'

class Covid19casesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @covid19case = covid19cases(:one)
  end

  test "should get index" do
    get covid19cases_url
    assert_response :success
  end

  test "should get new" do
    get new_covid19case_url
    assert_response :success
  end

  test "should create covid19case" do
    assert_difference('Covid19case.count') do
      post covid19cases_url, params: { covid19case: { age: @covid19case.age, announce_date: @covid19case.announce_date, id_pass: @covid19case.id_pass, name: @covid19case.name, nationality: @covid19case.nationality, notification_date: @covid19case.notification_date, onset_district: @covid19case.onset_district, onset_province: @covid19case.onset_province, qua_province: @covid19case.qua_province, remark1: @covid19case.remark1, remark2: @covid19case.remark2, sex: @covid19case.sex, status: @covid19case.status } }
    end

    assert_redirected_to covid19case_url(Covid19case.last)
  end

  test "should show covid19case" do
    get covid19case_url(@covid19case)
    assert_response :success
  end

  test "should get edit" do
    get edit_covid19case_url(@covid19case)
    assert_response :success
  end

  test "should update covid19case" do
    patch covid19case_url(@covid19case), params: { covid19case: { age: @covid19case.age, announce_date: @covid19case.announce_date, id_pass: @covid19case.id_pass, name: @covid19case.name, nationality: @covid19case.nationality, notification_date: @covid19case.notification_date, onset_district: @covid19case.onset_district, onset_province: @covid19case.onset_province, qua_province: @covid19case.qua_province, remark1: @covid19case.remark1, remark2: @covid19case.remark2, sex: @covid19case.sex, status: @covid19case.status } }
    assert_redirected_to covid19case_url(@covid19case)
  end

  test "should destroy covid19case" do
    assert_difference('Covid19case.count', -1) do
      delete covid19case_url(@covid19case)
    end

    assert_redirected_to covid19cases_url
  end
end
