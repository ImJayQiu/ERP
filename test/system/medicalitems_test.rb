require "application_system_test_case"

class MedicalitemsTest < ApplicationSystemTestCase
  setup do
    @medicalitem = medicalitems(:one)
  end

  test "visiting the index" do
    visit medicalitems_url
    assert_selector "h1", text: "Medicalitems"
  end

  test "creating a Medicalitem" do
    visit medicalitems_url
    click_on "New Medicalitem"

    fill_in "Des", with: @medicalitem.des
    fill_in "Name", with: @medicalitem.name
    fill_in "Remark", with: @medicalitem.remark
    click_on "Create Medicalitem"

    assert_text "Medicalitem was successfully created"
    click_on "Back"
  end

  test "updating a Medicalitem" do
    visit medicalitems_url
    click_on "Edit", match: :first

    fill_in "Des", with: @medicalitem.des
    fill_in "Name", with: @medicalitem.name
    fill_in "Remark", with: @medicalitem.remark
    click_on "Update Medicalitem"

    assert_text "Medicalitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Medicalitem" do
    visit medicalitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medicalitem was successfully destroyed"
  end
end
