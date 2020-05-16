require 'test_helper'

class AuthenticationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authentication = authentications(:one)
  end

  test "should get index" do
    get authentications_url
    assert_response :success
  end

  test "should get new" do
    get new_authentication_url
    assert_response :success
  end

  test "should create authentication" do
    assert_difference('Authentication.count') do
      post authentications_url, params: { authentication: {  } }
    end

    assert_redirected_to authentication_url(Authentication.last)
  end

  test "should show authentication" do
    get authentication_url(@authentication)
    assert_response :success
  end

  test "should get edit" do
    get edit_authentication_url(@authentication)
    assert_response :success
  end

  test "should update authentication" do
    patch authentication_url(@authentication), params: { authentication: {  } }
    assert_redirected_to authentication_url(@authentication)
  end

  test "should destroy authentication" do
    assert_difference('Authentication.count', -1) do
      delete authentication_url(@authentication)
    end

    assert_redirected_to authentications_url
  end
end
