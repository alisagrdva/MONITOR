require "application_system_test_case"

class StoriesTest < ApplicationSystemTestCase
  setup do
    @story = stories(:one)
  end

  test "visiting the index" do
    visit stories_url
    assert_selector "h1", text: "Stories"
  end

  test "creating a Story" do
    visit stories_url
    click_on "New Story"

    fill_in "Post", with: @story.post_id
    fill_in "Teaser", with: @story.teaser
    fill_in "Teaser two", with: @story.teaser_two
    click_on "Create Story"

    assert_text "Story was successfully created"
    click_on "Back"
  end

  test "updating a Story" do
    visit stories_url
    click_on "Edit", match: :first

    fill_in "Post", with: @story.post_id
    fill_in "Teaser", with: @story.teaser
    fill_in "Teaser two", with: @story.teaser_two
    click_on "Update Story"

    assert_text "Story was successfully updated"
    click_on "Back"
  end

  test "destroying a Story" do
    visit stories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Story was successfully destroyed"
  end
end
