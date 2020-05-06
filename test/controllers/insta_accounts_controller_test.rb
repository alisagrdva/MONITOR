require 'test_helper'

class InstaAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insta_account = insta_accounts(:one)
  end

  test "should get index" do
    get insta_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_insta_account_url
    assert_response :success
  end

  test "should create insta_account" do
    assert_difference('InstaAccount.count') do
      post insta_accounts_url, params: { insta_account: { moniitor_id: @insta_account.moniitor_id, name: @insta_account.name } }
    end

    assert_redirected_to insta_account_url(InstaAccount.last)
  end

  test "should show insta_account" do
    get insta_account_url(@insta_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_insta_account_url(@insta_account)
    assert_response :success
  end

  test "should update insta_account" do
    patch insta_account_url(@insta_account), params: { insta_account: { moniitor_id: @insta_account.moniitor_id, name: @insta_account.name } }
    assert_redirected_to insta_account_url(@insta_account)
  end

  test "should destroy insta_account" do
    assert_difference('InstaAccount.count', -1) do
      delete insta_account_url(@insta_account)
    end

    assert_redirected_to insta_accounts_url
  end
end
