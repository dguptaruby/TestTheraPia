# frozen_string_literal: true

class UserRegion < ApplicationRecord
  belongs_to :user
  belongs_to :region
end
