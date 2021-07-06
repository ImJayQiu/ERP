require "application_system_test_case"

class CountryinfosTest < ApplicationSystemTestCase
  setup do
    @countryinfo = countryinfos(:one)
  end

  test "visiting the index" do
    visit countryinfos_url
    assert_selector "h1", text: "Countryinfos"
  end

  test "creating a Countryinfo" do
    visit countryinfos_url
    click_on "New Countryinfo"

    fill_in "Iso", with: @countryinfo.ISO
    fill_in "Lat", with: @countryinfo.lat
    fill_in "Lon", with: @countryinfo.lon
    fill_in "Name", with: @countryinfo.name
    fill_in "Remark", with: @countryinfo.remark
    fill_in "Zoom", with: @countryinfo.zoom
    click_on "Create Countryinfo"

    assert_text "Countryinfo was successfully created"
    click_on "Back"
  end

  test "updating a Countryinfo" do
    visit countryinfos_url
    click_on "Edit", match: :first

    fill_in "Iso", with: @countryinfo.ISO
    fill_in "Lat", with: @countryinfo.lat
    fill_in "Lon", with: @countryinfo.lon
    fill_in "Name", with: @countryinfo.name
    fill_in "Remark", with: @countryinfo.remark
    fill_in "Zoom", with: @countryinfo.zoom
    click_on "Update Countryinfo"

    assert_text "Countryinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Countryinfo" do
    visit countryinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Countryinfo was successfully destroyed"
  end
end
