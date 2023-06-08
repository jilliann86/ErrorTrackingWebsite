require "test_helper"

class UserErrorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_error = user_errors(:one)
  end

  test "should get index" do
    get user_errors_url
    assert_response :success
  end

  test "should get new" do
    get new_user_error_url
    assert_response :success
  end

  test "should create user_error" do
    assert_difference("UserError.count") do
      post user_errors_url, params: { user_error: { date: @user_error.date, error_id: @user_error.error_id, note: @user_error.note, user_id: @user_error.user_id } }
    end

    assert_redirected_to user_error_url(UserError.last)
  end

  test "should show user_error" do
    get user_error_url(@user_error)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_error_url(@user_error)
    assert_response :success
  end

  test "should update user_error" do
    patch user_error_url(@user_error), params: { user_error: { date: @user_error.date, error_id: @user_error.error_id, note: @user_error.note, user_id: @user_error.user_id } }
    assert_redirected_to user_error_url(@user_error)
  end

  test "should destroy user_error" do
    assert_difference("UserError.count", -1) do
      delete user_error_url(@user_error)
    end

    assert_redirected_to user_errors_url
  end
end
