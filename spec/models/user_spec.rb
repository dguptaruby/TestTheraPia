require 'rails_helper'
# require './test_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should belong_to(:company) }
    let(:name) { "user" }
  end
end