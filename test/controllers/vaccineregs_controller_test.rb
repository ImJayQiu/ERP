require 'test_helper'

class VaccineregsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vaccinereg = vaccineregs(:one)
  end

  test "should get index" do
    get vaccineregs_url
    assert_response :success
  end

  test "should get new" do
    get new_vaccinereg_url
    assert_response :success
  end

  test "should create vaccinereg" do
    assert_difference('Vaccinereg.count') do
      post vaccineregs_url, params: { vaccinereg: { address: @vaccinereg.address, allergies: @vaccinereg.allergies, birthday: @vaccinereg.birthday, city: @vaccinereg.city, country: @vaccinereg.country, coviddetail: @vaccinereg.coviddetail, covidhistory: @vaccinereg.covidhistory, currentmedication: @vaccinereg.currentmedication, declare: @vaccinereg.declare, email: @vaccinereg.email, firstname: @vaccinereg.firstname, gender: @vaccinereg.gender, healthcondition: @vaccinereg.healthcondition, idpass: @vaccinereg.idpass, insurancecompany: @vaccinereg.insurancecompany, insuranceid: @vaccinereg.insuranceid, lastname: @vaccinereg.lastname, phone: @vaccinereg.phone, province: @vaccinereg.province, remark: @vaccinereg.remark, zipcode: @vaccinereg.zipcode } }
    end

    assert_redirected_to vaccinereg_url(Vaccinereg.last)
  end

  test "should show vaccinereg" do
    get vaccinereg_url(@vaccinereg)
    assert_response :success
  end

  test "should get edit" do
    get edit_vaccinereg_url(@vaccinereg)
    assert_response :success
  end

  test "should update vaccinereg" do
    patch vaccinereg_url(@vaccinereg), params: { vaccinereg: { address: @vaccinereg.address, allergies: @vaccinereg.allergies, birthday: @vaccinereg.birthday, city: @vaccinereg.city, country: @vaccinereg.country, coviddetail: @vaccinereg.coviddetail, covidhistory: @vaccinereg.covidhistory, currentmedication: @vaccinereg.currentmedication, declare: @vaccinereg.declare, email: @vaccinereg.email, firstname: @vaccinereg.firstname, gender: @vaccinereg.gender, healthcondition: @vaccinereg.healthcondition, idpass: @vaccinereg.idpass, insurancecompany: @vaccinereg.insurancecompany, insuranceid: @vaccinereg.insuranceid, lastname: @vaccinereg.lastname, phone: @vaccinereg.phone, province: @vaccinereg.province, remark: @vaccinereg.remark, zipcode: @vaccinereg.zipcode } }
    assert_redirected_to vaccinereg_url(@vaccinereg)
  end

  test "should destroy vaccinereg" do
    assert_difference('Vaccinereg.count', -1) do
      delete vaccinereg_url(@vaccinereg)
    end

    assert_redirected_to vaccineregs_url
  end
end
