require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    listing = listings(:one)
  end

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listings_url
    assert_response :success
  end

  test "should create listings" do
    assert_difference('listings.count') do
      post listings_url, params: { listings: { content: listings.content, title: listings.title, user_id: listings.user_id } }
    end

    assert_redirected_to listings_url(listings.last)
  end

  test "should show listings" do
    get listings_url(listings)
    assert_response :success
  end

  test "should get edit" do
    get edit_listings_url(listings)
    assert_response :success
  end

  # test "should update listings" do
  #   patch listings_url(listings), params: { listings: { content: listings.content, title: listings.title, user_id: listings.user_id } }
  #   assert_redirected_to listings_url(listings)
  # end

  # test "should destroy listings" do
  #   assert_difference('listings.count', -1) do
  #     delete listings_url(listings)
  #   end

    # assert_redirected_to listings_url
  # end
end