require "application_system_test_case"

class IndexpagesTest < ApplicationSystemTestCase
  setup do
    @indexpage = indexpages(:one)
  end

  test "visiting the index" do
    visit indexpages_url
    assert_selector "h1", text: "Indexpages"
  end

  test "creating a Indexpage" do
    visit indexpages_url
    click_on "New Indexpage"

    fill_in "T01", with: @indexpage.t01
    fill_in "T02", with: @indexpage.t02
    fill_in "T03", with: @indexpage.t03
    fill_in "T04", with: @indexpage.t04
    fill_in "T05", with: @indexpage.t05
    fill_in "T06", with: @indexpage.t06
    fill_in "T07", with: @indexpage.t07
    fill_in "T08", with: @indexpage.t08
    fill_in "T09", with: @indexpage.t09
    fill_in "T10", with: @indexpage.t10
    fill_in "T11", with: @indexpage.t11
    fill_in "T12", with: @indexpage.t12
    fill_in "T13", with: @indexpage.t13
    fill_in "T14", with: @indexpage.t14
    fill_in "T15", with: @indexpage.t15
    fill_in "T16", with: @indexpage.t16
    fill_in "T17", with: @indexpage.t17
    fill_in "T18", with: @indexpage.t18
    fill_in "T19", with: @indexpage.t19
    fill_in "T20", with: @indexpage.t20
    fill_in "T21", with: @indexpage.t21
    fill_in "T22", with: @indexpage.t22
    fill_in "T23", with: @indexpage.t23
    fill_in "T24", with: @indexpage.t24
    fill_in "T25", with: @indexpage.t25
    fill_in "T26", with: @indexpage.t26
    fill_in "T27", with: @indexpage.t27
    fill_in "T28", with: @indexpage.t28
    fill_in "T29", with: @indexpage.t29
    fill_in "T30", with: @indexpage.t30
    click_on "Create Indexpage"

    assert_text "Indexpage was successfully created"
    click_on "Back"
  end

  test "updating a Indexpage" do
    visit indexpages_url
    click_on "Edit", match: :first

    fill_in "T01", with: @indexpage.t01
    fill_in "T02", with: @indexpage.t02
    fill_in "T03", with: @indexpage.t03
    fill_in "T04", with: @indexpage.t04
    fill_in "T05", with: @indexpage.t05
    fill_in "T06", with: @indexpage.t06
    fill_in "T07", with: @indexpage.t07
    fill_in "T08", with: @indexpage.t08
    fill_in "T09", with: @indexpage.t09
    fill_in "T10", with: @indexpage.t10
    fill_in "T11", with: @indexpage.t11
    fill_in "T12", with: @indexpage.t12
    fill_in "T13", with: @indexpage.t13
    fill_in "T14", with: @indexpage.t14
    fill_in "T15", with: @indexpage.t15
    fill_in "T16", with: @indexpage.t16
    fill_in "T17", with: @indexpage.t17
    fill_in "T18", with: @indexpage.t18
    fill_in "T19", with: @indexpage.t19
    fill_in "T20", with: @indexpage.t20
    fill_in "T21", with: @indexpage.t21
    fill_in "T22", with: @indexpage.t22
    fill_in "T23", with: @indexpage.t23
    fill_in "T24", with: @indexpage.t24
    fill_in "T25", with: @indexpage.t25
    fill_in "T26", with: @indexpage.t26
    fill_in "T27", with: @indexpage.t27
    fill_in "T28", with: @indexpage.t28
    fill_in "T29", with: @indexpage.t29
    fill_in "T30", with: @indexpage.t30
    click_on "Update Indexpage"

    assert_text "Indexpage was successfully updated"
    click_on "Back"
  end

  test "destroying a Indexpage" do
    visit indexpages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Indexpage was successfully destroyed"
  end
end
