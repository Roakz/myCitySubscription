require "application_system_test_case"

class ShiftsTest < ApplicationSystemTestCase
  setup do
    @shift = shifts(:one)
  end

  test "visiting the index" do
    visit shifts_url
    assert_selector "h1", text: "Shifts"
  end

  test "creating a Shift" do
    visit shifts_url
    click_on "New Shift"

    fill_in "Assigned volunteers", with: @shift.assigned_volunteers
    check "Cancellation" if @shift.cancellation
    fill_in "Date", with: @shift.date
    fill_in "Description", with: @shift.description
    fill_in "Finish time", with: @shift.finish_time
    fill_in "Location", with: @shift.location
    fill_in "Roster", with: @shift.roster_id
    fill_in "Start time", with: @shift.start_time
    fill_in "Title", with: @shift.title
    fill_in "Training requirements", with: @shift.training_requirements
    click_on "Create Shift"

    assert_text "Shift was successfully created"
    click_on "Back"
  end

  test "updating a Shift" do
    visit shifts_url
    click_on "Edit", match: :first

    fill_in "Assigned volunteers", with: @shift.assigned_volunteers
    check "Cancellation" if @shift.cancellation
    fill_in "Date", with: @shift.date
    fill_in "Description", with: @shift.description
    fill_in "Finish time", with: @shift.finish_time
    fill_in "Location", with: @shift.location
    fill_in "Roster", with: @shift.roster_id
    fill_in "Start time", with: @shift.start_time
    fill_in "Title", with: @shift.title
    fill_in "Training requirements", with: @shift.training_requirements
    click_on "Update Shift"

    assert_text "Shift was successfully updated"
    click_on "Back"
  end

  test "destroying a Shift" do
    visit shifts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shift was successfully destroyed"
  end
end
