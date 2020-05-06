require 'test_helper'

class MoniitorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moniitor = moniitors(:one)
  end

  test "should get index" do
    get moniitors_url
    assert_response :success
  end

  test "should get new" do
    get new_moniitor_url
    assert_response :success
  end

  test "should create moniitor" do
    assert_difference('Moniitor.count') do
      post moniitors_url, params: { moniitor: { title: @moniitor.title } }
    end

    assert_redirected_to moniitor_url(Moniitor.last)
  end

  test "should show moniitor" do
    get moniitor_url(@moniitor)
    assert_response :success
  end

  test "should get edit" do
    get edit_moniitor_url(@moniitor)
    assert_response :success
  end

  test "should update moniitor" do
    patch moniitor_url(@moniitor), params: { moniitor: { title: @moniitor.title } }
    assert_redirected_to moniitor_url(@moniitor)
  end

  test "should destroy moniitor" do
    assert_difference('Moniitor.count', -1) do
      delete moniitor_url(@moniitor)
    end

    assert_redirected_to moniitors_url
  end
end
