require 'test_helper'

class ListingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get listing_index_url
    assert_response :success
  end

  test "should get show" do
    get listing_show_url
    assert_response :success
  end

  test "should get new" do
    get listing_new_url
    assert_response :success
  end

  test "should get create" do
    get listing_create_url
    assert_response :success
  end

  test "should get edit" do
    get listing_edit_url
    assert_response :success
  end

end
