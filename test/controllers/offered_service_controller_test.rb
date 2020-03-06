require 'test_helper'

class OfferedServiceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get offered_service_index_url
    assert_response :success
  end

  test "should get show" do
    get offered_service_show_url
    assert_response :success
  end

  test "should get new" do
    get offered_service_new_url
    assert_response :success
  end

  test "should get create" do
    get offered_service_create_url
    assert_response :success
  end

end
