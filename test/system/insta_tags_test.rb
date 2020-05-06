require "application_system_test_case"

class InstaTagsTest < ApplicationSystemTestCase
  setup do
    @insta_tag = insta_tags(:one)
  end

  test "visiting the index" do
    visit insta_tags_url
    assert_selector "h1", text: "Insta Tags"
  end

  test "creating a Insta tag" do
    visit insta_tags_url
    click_on "New Insta Tag"

    fill_in "Moniitor", with: @insta_tag.moniitor_id
    fill_in "Name", with: @insta_tag.name
    click_on "Create Insta tag"

    assert_text "Insta tag was successfully created"
    click_on "Back"
  end

  test "updating a Insta tag" do
    visit insta_tags_url
    click_on "Edit", match: :first

    fill_in "Moniitor", with: @insta_tag.moniitor_id
    fill_in "Name", with: @insta_tag.name
    click_on "Update Insta tag"

    assert_text "Insta tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Insta tag" do
    visit insta_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insta tag was successfully destroyed"
  end
end
