require "application_system_test_case"

class InstaAccountsTest < ApplicationSystemTestCase
  setup do
    @insta_account = insta_accounts(:one)
  end

  test "visiting the index" do
    visit insta_accounts_url
    assert_selector "h1", text: "Insta Accounts"
  end

  test "creating a Insta account" do
    visit insta_accounts_url
    click_on "New Insta Account"

    fill_in "Moniitor", with: @insta_account.moniitor_id
    fill_in "Name", with: @insta_account.name
    click_on "Create Insta account"

    assert_text "Insta account was successfully created"
    click_on "Back"
  end

  test "updating a Insta account" do
    visit insta_accounts_url
    click_on "Edit", match: :first

    fill_in "Moniitor", with: @insta_account.moniitor_id
    fill_in "Name", with: @insta_account.name
    click_on "Update Insta account"

    assert_text "Insta account was successfully updated"
    click_on "Back"
  end

  test "destroying a Insta account" do
    visit insta_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insta account was successfully destroyed"
  end
end
