require "application_system_test_case"

class UserErrorsTest < ApplicationSystemTestCase
  setup do
    @user_error = user_errors(:one)
  end

  test "visiting the index" do
    visit user_errors_url
    assert_selector "h1", text: "User errors"
  end

  test "should create user error" do
    visit user_errors_url
    click_on "New user error"

    fill_in "Date", with: @user_error.date
    fill_in "Error", with: @user_error.error_id
    fill_in "Note", with: @user_error.note
    fill_in "User", with: @user_error.user_id
    click_on "Create User error"

    assert_text "User error was successfully created"
    click_on "Back"
  end

  test "should update User error" do
    visit user_error_url(@user_error)
    click_on "Edit this user error", match: :first

    fill_in "Date", with: @user_error.date
    fill_in "Error", with: @user_error.error_id
    fill_in "Note", with: @user_error.note
    fill_in "User", with: @user_error.user_id
    click_on "Update User error"

    assert_text "User error was successfully updated"
    click_on "Back"
  end

  test "should destroy User error" do
    visit user_error_url(@user_error)
    click_on "Destroy this user error", match: :first

    assert_text "User error was successfully destroyed"
  end
end
