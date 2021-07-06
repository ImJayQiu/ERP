require "application_system_test_case"

class LivingsuppliesTest < ApplicationSystemTestCase
  setup do
    @livingsupply = livingsupplies(:one)
  end

  test "visiting the index" do
    visit livingsupplies_url
    assert_selector "h1", text: "Livingsupplies"
  end

  test "creating a Livingsupply" do
    visit livingsupplies_url
    click_on "New Livingsupply"

    fill_in "Date", with: @livingsupply.date
    fill_in "Item", with: @livingsupply.item
    fill_in "Province", with: @livingsupply.province
    fill_in "Quantity", with: @livingsupply.quantity
    fill_in "Remark", with: @livingsupply.remark
    fill_in "Unit", with: @livingsupply.unit
    click_on "Create Livingsupply"

    assert_text "Livingsupply was successfully created"
    click_on "Back"
  end

  test "updating a Livingsupply" do
    visit livingsupplies_url
    click_on "Edit", match: :first

    fill_in "Date", with: @livingsupply.date
    fill_in "Item", with: @livingsupply.item
    fill_in "Province", with: @livingsupply.province
    fill_in "Quantity", with: @livingsupply.quantity
    fill_in "Remark", with: @livingsupply.remark
    fill_in "Unit", with: @livingsupply.unit
    click_on "Update Livingsupply"

    assert_text "Livingsupply was successfully updated"
    click_on "Back"
  end

  test "destroying a Livingsupply" do
    visit livingsupplies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Livingsupply was successfully destroyed"
  end
end
