# frozen_string_literal: true

json.array! @user_lists, partial: 'user_lists/user_list', as: :user_list
