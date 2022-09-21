# frozen_string_literal: true

json.extract! user_list, :id, :first_name, :last_name, :is_active, :start_date, :end_date, :monthly_charge, :email,
              :user_role, :company_id, :created_at, :updated_at
json.url user_list_url(user_list, format: :json)
