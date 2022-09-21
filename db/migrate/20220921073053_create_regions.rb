# frozen_string_literal: true

class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :region_name

      t.timestamps
    end
  end
end
