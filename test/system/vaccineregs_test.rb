require "application_system_test_case"

class VaccineregsTest < ApplicationSystemTestCase
  setup do
    @vaccinereg = vaccineregs(:one)
  end

  test "visiting the index" do
    visit vaccineregs_url
    assert_selector "h1", text: "Vaccineregs"
  end

  test "creating a Vaccinereg" do
    visit vaccineregs_url
    click_on "New Vaccinereg"

    fill_in "Address", with: @vaccinereg.address
    fill_in "Allergies", with: @vaccinereg.allergies
    fill_in "Birthday", with: @vaccinereg.birthday
    fill_in "City", with: @vaccinereg.city
    fill_in "Country", with: @vaccinereg.country
    fill_in "Coviddetail", with: @vaccinereg.coviddetail
    fill_in "Covidhistory", with: @vaccinereg.covidhistory
    fill_in "Currentmedication", with: @vaccinereg.currentmedication
    fill_in "Declare", with: @vaccinereg.declare
    fill_in "Email", with: @vaccinereg.email
    fill_in "Firstname", with: @vaccinereg.firstname
    fill_in "Gender", with: @vaccinereg.gender
    fill_in "Healthcondition", with: @vaccinereg.healthcondition
    fill_in "Idpass", with: @vaccinereg.idpass
    fill_in "Insurancecompany", with: @vaccinereg.insurancecompany
    fill_in "Insuranceid", with: @vaccinereg.insuranceid
    fill_in "Lastname", with: @vaccinereg.lastname
    fill_in "Phone", with: @vaccinereg.phone
    fill_in "Province", with: @vaccinereg.province
    fill_in "Remark", with: @vaccinereg.remark
    fill_in "Zipcode", with: @vaccinereg.zipcode
    click_on "Create Vaccinereg"

    assert_text "Vaccinereg was successfully created"
    click_on "Back"
  end

  test "updating a Vaccinereg" do
    visit vaccineregs_url
    click_on "Edit", match: :first

    fill_in "Address", with: @vaccinereg.address
    fill_in "Allergies", with: @vaccinereg.allergies
    fill_in "Birthday", with: @vaccinereg.birthday
    fill_in "City", with: @vaccinereg.city
    fill_in "Country", with: @vaccinereg.country
    fill_in "Coviddetail", with: @vaccinereg.coviddetail
    fill_in "Covidhistory", with: @vaccinereg.covidhistory
    fill_in "Currentmedication", with: @vaccinereg.currentmedication
    fill_in "Declare", with: @vaccinereg.declare
    fill_in "Email", with: @vaccinereg.email
    fill_in "Firstname", with: @vaccinereg.firstname
    fill_in "Gender", with: @vaccinereg.gender
    fill_in "Healthcondition", with: @vaccinereg.healthcondition
    fill_in "Idpass", with: @vaccinereg.idpass
    fill_in "Insurancecompany", with: @vaccinereg.insurancecompany
    fill_in "Insuranceid", with: @vaccinereg.insuranceid
    fill_in "Lastname", with: @vaccinereg.lastname
    fill_in "Phone", with: @vaccinereg.phone
    fill_in "Province", with: @vaccinereg.province
    fill_in "Remark", with: @vaccinereg.remark
    fill_in "Zipcode", with: @vaccinereg.zipcode
    click_on "Update Vaccinereg"

    assert_text "Vaccinereg was successfully updated"
    click_on "Back"
  end

  test "destroying a Vaccinereg" do
    visit vaccineregs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vaccinereg was successfully destroyed"
  end
end
