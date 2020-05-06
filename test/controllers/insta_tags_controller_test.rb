require 'test_helper'

class InstaTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insta_tag = insta_tags(:one)
  end

  test "should get index" do
    get insta_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_insta_tag_url
    assert_response :success
  end

  test "should create insta_tag" do
    assert_difference('InstaTag.count') do
      post insta_tags_url, params: { insta_tag: { moniitor_id: @insta_tag.moniitor_id, name: @insta_tag.name } }
    end

    assert_redirected_to insta_tag_url(InstaTag.last)
  end

  test "should show insta_tag" do
    get insta_tag_url(@insta_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_insta_tag_url(@insta_tag)
    assert_response :success
  end

  test "should update insta_tag" do
    patch insta_tag_url(@insta_tag), params: { insta_tag: { moniitor_id: @insta_tag.moniitor_id, name: @insta_tag.name } }
    assert_redirected_to insta_tag_url(@insta_tag)
  end

  test "should destroy insta_tag" do
    assert_difference('InstaTag.count', -1) do
      delete insta_tag_url(@insta_tag)
    end

    assert_redirected_to insta_tags_url
  end
end
