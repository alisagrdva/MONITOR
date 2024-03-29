require "application_system_test_case"

class InstaPostsTest < ApplicationSystemTestCase
  setup do
    @insta_post = insta_posts(:one)
  end

  test "visiting the index" do
    visit insta_posts_url
    assert_selector "h1", text: "Insta Posts"
  end

  test "creating a Insta post" do
    visit insta_posts_url
    click_on "New Insta Post"

    fill_in "Insta account", with: @insta_post.insta_account_id
    fill_in "Insta tag", with: @insta_post.insta_tag_id
    fill_in "Moniitor", with: @insta_post.moniitor_id
    click_on "Create Insta post"

    assert_text "Insta post was successfully created"
    click_on "Back"
  end

  test "updating a Insta post" do
    visit insta_posts_url
    click_on "Edit", match: :first

    fill_in "Insta account", with: @insta_post.insta_account_id
    fill_in "Insta tag", with: @insta_post.insta_tag_id
    fill_in "Moniitor", with: @insta_post.moniitor_id
    click_on "Update Insta post"

    assert_text "Insta post was successfully updated"
    click_on "Back"
  end

  test "destroying a Insta post" do
    visit insta_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insta post was successfully destroyed"
  end
end
