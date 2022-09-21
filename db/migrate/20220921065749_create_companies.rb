# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :post_code
      t.boolean :is_active

      t.timestamps
    end
  end
end
