# frozen_string_literal: true

class CreateConutries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :contry_name

      t.timestamps
    end
  end
end
