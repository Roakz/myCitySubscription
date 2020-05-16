require 'test_helper'

class RostersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roster = rosters(:one)
  end

  test "should get index" do
    get rosters_url
    assert_response :success
  end

  test "should get new" do
    get new_roster_url
    assert_response :success
  end

  test "should create roster" do
    assert_difference('Roster.count') do
      post rosters_url, params: { roster: { finish_date: @roster.finish_date, organisation_id: @roster.organisation_id, start_date: @roster.start_date, title: @roster.title, volunteer_id: @roster.volunteer_id } }
    end

    assert_redirected_to roster_url(Roster.last)
  end

  test "should show roster" do
    get roster_url(@roster)
    assert_response :success
  end

  test "should get edit" do
    get edit_roster_url(@roster)
    assert_response :success
  end

  test "should update roster" do
    patch roster_url(@roster), params: { roster: { finish_date: @roster.finish_date, organisation_id: @roster.organisation_id, start_date: @roster.start_date, title: @roster.title, volunteer_id: @roster.volunteer_id } }
    assert_redirected_to roster_url(@roster)
  end

  test "should destroy roster" do
    assert_difference('Roster.count', -1) do
      delete roster_url(@roster)
    end

    assert_redirected_to rosters_url
  end
end
