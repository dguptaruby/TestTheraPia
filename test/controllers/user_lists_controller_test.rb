# frozen_string_literal: true

require 'test_helper'

class UserListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_list = user_lists(:one)
  end

  test 'should get index' do
    get user_lists_url
    assert_response :success
  end

  test 'should get new' do
    get new_user_list_url
    assert_response :success
  end

  test 'should create user_list' do
    assert_difference('UserList.count') do
      post user_lists_url,
           params: { user_list: { company_id: @user_list.company_id, email: @user_list.email, end_date: @user_list.end_date,
                                  first_name: @user_list.first_name, is_active: @user_list.is_active, last_name: @user_list.last_name, monthly_charge: @user_list.monthly_charge, start_date: @user_list.start_date, user_role: @user_list.user_role } }
    end

    assert_redirected_to user_list_url(UserList.last)
  end

  test 'should show user_list' do
    get user_list_url(@user_list)
    assert_response :success
  end

  test 'should get edit' do
    get edit_user_list_url(@user_list)
    assert_response :success
  end

  test 'should update user_list' do
    patch user_list_url(@user_list),
          params: { user_list: { company_id: @user_list.company_id, email: @user_list.email, end_date: @user_list.end_date,
                                 first_name: @user_list.first_name, is_active: @user_list.is_active, last_name: @user_list.last_name, monthly_charge: @user_list.monthly_charge, start_date: @user_list.start_date, user_role: @user_list.user_role } }
    assert_redirected_to user_list_url(@user_list)
  end

  test 'should destroy user_list' do
    assert_difference('UserList.count', -1) do
      delete user_list_url(@user_list)
    end

    assert_redirected_to user_lists_url
  end
end
