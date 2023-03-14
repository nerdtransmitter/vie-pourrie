require "test_helper"

class MoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get moods_index_url
    assert_response :success
  end

  test "should get new" do
    get moods_new_url
    assert_response :success
  end

  test "should get create" do
    get moods_create_url
    assert_response :success
  end

  test "should get edit" do
    get moods_edit_url
    assert_response :success
  end

  test "should get update" do
    get moods_update_url
    assert_response :success
  end

  test "should get destroy" do
    get moods_destroy_url
    assert_response :success
  end
end
