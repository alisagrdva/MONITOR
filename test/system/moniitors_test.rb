require "application_system_test_case"

class MoniitorsTest < ApplicationSystemTestCase
  setup do
    @moniitor = moniitors(:one)
  end

  test "visiting the index" do
    visit moniitors_url
    assert_selector "h1", text: "Moniitors"
  end

  test "creating a Moniitor" do
    visit moniitors_url
    click_on "New Moniitor"

    fill_in "Title", with: @moniitor.title
    click_on "Create Moniitor"

    assert_text "Moniitor was successfully created"
    click_on "Back"
  end

  test "updating a Moniitor" do
    visit moniitors_url
    click_on "Edit", match: :first

    fill_in "Title", with: @moniitor.title
    click_on "Update Moniitor"

    assert_text "Moniitor was successfully updated"
    click_on "Back"
  end

  test "destroying a Moniitor" do
    visit moniitors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Moniitor was successfully destroyed"
  end
end
