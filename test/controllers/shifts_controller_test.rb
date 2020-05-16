require 'test_helper'

class ShiftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shift = shifts(:one)
  end

  test "should get index" do
    get shifts_url
    assert_response :success
  end

  test "should get new" do
    get new_shift_url
    assert_response :success
  end

  test "should create shift" do
    assert_difference('Shift.count') do
      post shifts_url, params: { shift: { assigned_volunteers: @shift.assigned_volunteers, cancellation: @shift.cancellation, date: @shift.date, description: @shift.description, finish_time: @shift.finish_time, location: @shift.location, roster_id: @shift.roster_id, start_time: @shift.start_time, title: @shift.title, training_requirements: @shift.training_requirements } }
    end

    assert_redirected_to shift_url(Shift.last)
  end

  test "should show shift" do
    get shift_url(@shift)
    assert_response :success
  end

  test "should get edit" do
    get edit_shift_url(@shift)
    assert_response :success
  end

  test "should update shift" do
    patch shift_url(@shift), params: { shift: { assigned_volunteers: @shift.assigned_volunteers, cancellation: @shift.cancellation, date: @shift.date, description: @shift.description, finish_time: @shift.finish_time, location: @shift.location, roster_id: @shift.roster_id, start_time: @shift.start_time, title: @shift.title, training_requirements: @shift.training_requirements } }
    assert_redirected_to shift_url(@shift)
  end

  test "should destroy shift" do
    assert_difference('Shift.count', -1) do
      delete shift_url(@shift)
    end

    assert_redirected_to shifts_url
  end
end
