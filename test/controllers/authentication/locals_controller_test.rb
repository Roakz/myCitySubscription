require 'test_helper'

class Authentication::LocalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authentication_local = authentication_locals(:one)
  end

  test "should get index" do
    get authentication_locals_url
    assert_response :success
  end

  test "should get new" do
    get new_authentication_local_url
    assert_response :success
  end

  test "should create authentication_local" do
    assert_difference('Authentication::Local.count') do
      post authentication_locals_url, params: { authentication_local: { email: @authentication_local.email, password: 'secret', password_confirmation: 'secret', user_id: @authentication_local.user_id } }
    end

    assert_redirected_to authentication_local_url(Authentication::Local.last)
  end

  test "should show authentication_local" do
    get authentication_local_url(@authentication_local)
    assert_response :success
  end

  test "should get edit" do
    get edit_authentication_local_url(@authentication_local)
    assert_response :success
  end

  test "should update authentication_local" do
    patch authentication_local_url(@authentication_local), params: { authentication_local: { email: @authentication_local.email, password: 'secret', password_confirmation: 'secret', user_id: @authentication_local.user_id } }
    assert_redirected_to authentication_local_url(@authentication_local)
  end

  test "should destroy authentication_local" do
    assert_difference('Authentication::Local.count', -1) do
      delete authentication_local_url(@authentication_local)
    end

    assert_redirected_to authentication_locals_url
  end
end
