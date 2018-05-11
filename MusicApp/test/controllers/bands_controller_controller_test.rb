require 'test_helper'

class BandsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bands_controller_new_url
    assert_response :success
  end

  test "should get edit" do
    get bands_controller_edit_url
    assert_response :success
  end

  test "should get update" do
    get bands_controller_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bands_controller_destroy_url
    assert_response :success
  end

  test "should get create" do
    get bands_controller_create_url
    assert_response :success
  end

end
