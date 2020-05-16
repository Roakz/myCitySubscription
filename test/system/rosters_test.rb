require "application_system_test_case"

class RostersTest < ApplicationSystemTestCase
  setup do
    @roster = rosters(:one)
  end

  test "visiting the index" do
    visit rosters_url
    assert_selector "h1", text: "Rosters"
  end

  test "creating a Roster" do
    visit rosters_url
    click_on "New Roster"

    fill_in "Finish date", with: @roster.finish_date
    fill_in "Organisation", with: @roster.organisation_id
    fill_in "Start date", with: @roster.start_date
    fill_in "Title", with: @roster.title
    fill_in "Volunteer", with: @roster.volunteer_id
    click_on "Create Roster"

    assert_text "Roster was successfully created"
    click_on "Back"
  end

  test "updating a Roster" do
    visit rosters_url
    click_on "Edit", match: :first

    fill_in "Finish date", with: @roster.finish_date
    fill_in "Organisation", with: @roster.organisation_id
    fill_in "Start date", with: @roster.start_date
    fill_in "Title", with: @roster.title
    fill_in "Volunteer", with: @roster.volunteer_id
    click_on "Update Roster"

    assert_text "Roster was successfully updated"
    click_on "Back"
  end

  test "destroying a Roster" do
    visit rosters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roster was successfully destroyed"
  end
end
