# frozen_string_literal: true

require 'application_system_test_case'

class UserListsTest < ApplicationSystemTestCase
  setup do
    @user_list = user_lists(:one)
  end

  test 'visiting the index' do
    visit user_lists_url
    assert_selector 'h1', text: 'User Lists'
  end

  test 'creating a User list' do
    visit user_lists_url
    click_on 'New User List'

    fill_in 'Company', with: @user_list.company_id
    fill_in 'Email', with: @user_list.email
    fill_in 'End date', with: @user_list.end_date
    fill_in 'First name', with: @user_list.first_name
    check 'Is active' if @user_list.is_active
    fill_in 'Last name', with: @user_list.last_name
    fill_in 'Monthly charge', with: @user_list.monthly_charge
    fill_in 'Start date', with: @user_list.start_date
    fill_in 'User role', with: @user_list.user_role
    click_on 'Create User list'

    assert_text 'User list was successfully created'
    click_on 'Back'
  end

  test 'updating a User list' do
    visit user_lists_url
    click_on 'Edit', match: :first

    fill_in 'Company', with: @user_list.company_id
    fill_in 'Email', with: @user_list.email
    fill_in 'End date', with: @user_list.end_date
    fill_in 'First name', with: @user_list.first_name
    check 'Is active' if @user_list.is_active
    fill_in 'Last name', with: @user_list.last_name
    fill_in 'Monthly charge', with: @user_list.monthly_charge
    fill_in 'Start date', with: @user_list.start_date
    fill_in 'User role', with: @user_list.user_role
    click_on 'Update User list'

    assert_text 'User list was successfully updated'
    click_on 'Back'
  end

  test 'destroying a User list' do
    visit user_lists_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'User list was successfully destroyed'
  end
end
