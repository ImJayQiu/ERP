require "application_system_test_case"

class LivingitemsTest < ApplicationSystemTestCase
  setup do
    @livingitem = livingitems(:one)
  end

  test "visiting the index" do
    visit livingitems_url
    assert_selector "h1", text: "Livingitems"
  end

  test "creating a Livingitem" do
    visit livingitems_url
    click_on "New Livingitem"

    fill_in "Des", with: @livingitem.des
    fill_in "Name", with: @livingitem.name
    fill_in "Remark", with: @livingitem.remark
    click_on "Create Livingitem"

    assert_text "Livingitem was successfully created"
    click_on "Back"
  end

  test "updating a Livingitem" do
    visit livingitems_url
    click_on "Edit", match: :first

    fill_in "Des", with: @livingitem.des
    fill_in "Name", with: @livingitem.name
    fill_in "Remark", with: @livingitem.remark
    click_on "Update Livingitem"

    assert_text "Livingitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Livingitem" do
    visit livingitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Livingitem was successfully destroyed"
  end
end
