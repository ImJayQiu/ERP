require "application_system_test_case"

class Covid19casesTest < ApplicationSystemTestCase
  setup do
    @covid19case = covid19cases(:one)
  end

  test "visiting the index" do
    visit covid19cases_url
    assert_selector "h1", text: "Covid19cases"
  end

  test "creating a Covid19case" do
    visit covid19cases_url
    click_on "New Covid19case"

    fill_in "Age", with: @covid19case.age
    fill_in "Announce date", with: @covid19case.announce_date
    fill_in "Id pass", with: @covid19case.id_pass
    fill_in "Name", with: @covid19case.name
    fill_in "Nationality", with: @covid19case.nationality
    fill_in "Notification date", with: @covid19case.notification_date
    fill_in "Onset district", with: @covid19case.onset_district
    fill_in "Onset province", with: @covid19case.onset_province
    fill_in "Qua province", with: @covid19case.qua_province
    fill_in "Remark1", with: @covid19case.remark1
    fill_in "Remark2", with: @covid19case.remark2
    fill_in "Sex", with: @covid19case.sex
    fill_in "Status", with: @covid19case.status
    click_on "Create Covid19case"

    assert_text "Covid19case was successfully created"
    click_on "Back"
  end

  test "updating a Covid19case" do
    visit covid19cases_url
    click_on "Edit", match: :first

    fill_in "Age", with: @covid19case.age
    fill_in "Announce date", with: @covid19case.announce_date
    fill_in "Id pass", with: @covid19case.id_pass
    fill_in "Name", with: @covid19case.name
    fill_in "Nationality", with: @covid19case.nationality
    fill_in "Notification date", with: @covid19case.notification_date
    fill_in "Onset district", with: @covid19case.onset_district
    fill_in "Onset province", with: @covid19case.onset_province
    fill_in "Qua province", with: @covid19case.qua_province
    fill_in "Remark1", with: @covid19case.remark1
    fill_in "Remark2", with: @covid19case.remark2
    fill_in "Sex", with: @covid19case.sex
    fill_in "Status", with: @covid19case.status
    click_on "Update Covid19case"

    assert_text "Covid19case was successfully updated"
    click_on "Back"
  end

  test "destroying a Covid19case" do
    visit covid19cases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Covid19case was successfully destroyed"
  end
end
