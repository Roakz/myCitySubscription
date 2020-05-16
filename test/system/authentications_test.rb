require "application_system_test_case"

class AuthenticationsTest < ApplicationSystemTestCase
  setup do
    @authentication = authentications(:one)
  end

  test "visiting the index" do
    visit authentications_url
    assert_selector "h1", text: "Authentications"
  end

  test "creating a Authentication" do
    visit authentications_url
    click_on "New Authentication"

    click_on "Create Authentication"

    assert_text "Authentication was successfully created"
    click_on "Back"
  end

  test "updating a Authentication" do
    visit authentications_url
    click_on "Edit", match: :first

    click_on "Update Authentication"

    assert_text "Authentication was successfully updated"
    click_on "Back"
  end

  test "destroying a Authentication" do
    visit authentications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Authentication was successfully destroyed"
  end
end
