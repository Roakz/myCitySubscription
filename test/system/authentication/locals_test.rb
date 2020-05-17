require "application_system_test_case"

class Authentication::LocalsTest < ApplicationSystemTestCase
  setup do
    @authentication_local = authentication_locals(:one)
  end

  test "visiting the index" do
    visit authentication_locals_url
    assert_selector "h1", text: "Authentication/Locals"
  end

  test "creating a Local" do
    visit authentication_locals_url
    click_on "New Authentication/Local"

    fill_in "Email", with: @authentication_local.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "User", with: @authentication_local.user_id
    click_on "Create Local"

    assert_text "Local was successfully created"
    click_on "Back"
  end

  test "updating a Local" do
    visit authentication_locals_url
    click_on "Edit", match: :first

    fill_in "Email", with: @authentication_local.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "User", with: @authentication_local.user_id
    click_on "Update Local"

    assert_text "Local was successfully updated"
    click_on "Back"
  end

  test "destroying a Local" do
    visit authentication_locals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Local was successfully destroyed"
  end
end
