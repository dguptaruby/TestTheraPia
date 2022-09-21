# frozen_string_literal: true

class AddfieldsToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_reference :places, :company, null: false, foreign_key: true
  end
end
