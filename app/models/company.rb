# frozen_string_literal: true

class Company < ApplicationRecord
  belongs_to :country
  belongs_to :state
  belongs_to :city
end
