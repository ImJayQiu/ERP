require "application_system_test_case"

class MedicalsuppliesTest < ApplicationSystemTestCase
  setup do
    @medicalsupply = medicalsupplies(:one)
  end

  test "visiting the index" do
    visit medicalsupplies_url
    assert_selector "h1", text: "Medicalsupplies"
  end

  test "creating a Medicalsupply" do
    visit medicalsupplies_url
    click_on "New Medicalsupply"

    fill_in "Date", with: @medicalsupply.date
    fill_in "Item", with: @medicalsupply.item
    fill_in "Province", with: @medicalsupply.province
    fill_in "Quantity", with: @medicalsupply.quantity
    fill_in "Remark", with: @medicalsupply.remark
    fill_in "Unit", with: @medicalsupply.unit
    click_on "Create Medicalsupply"

    assert_text "Medicalsupply was successfully created"
    click_on "Back"
  end

  test "updating a Medicalsupply" do
    visit medicalsupplies_url
    click_on "Edit", match: :first

    fill_in "Date", with: @medicalsupply.date
    fill_in "Item", with: @medicalsupply.item
    fill_in "Province", with: @medicalsupply.province
    fill_in "Quantity", with: @medicalsupply.quantity
    fill_in "Remark", with: @medicalsupply.remark
    fill_in "Unit", with: @medicalsupply.unit
    click_on "Update Medicalsupply"

    assert_text "Medicalsupply was successfully updated"
    click_on "Back"
  end

  test "destroying a Medicalsupply" do
    visit medicalsupplies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medicalsupply was successfully destroyed"
  end
end
