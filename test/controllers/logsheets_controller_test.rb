require 'test_helper'

class LogsheetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logsheets_index_url
    assert_response :success
  end

  test "should get show" do
    get logsheets_show_url
    assert_response :success
  end

  test "should get new" do
    get logsheets_new_url
    assert_response :success
  end

  test "should get edit" do
    get logsheets_edit_url
    assert_response :success
  end

end
