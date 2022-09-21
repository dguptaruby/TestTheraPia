# frozen_string_literal: true

json.extract! company, :id, :company_name, :post_code, :is_active, :created_at, :updated_at
json.url company_url(company, format: :json)
