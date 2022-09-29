require 'rails_helper'
# require './test_helper'

RSpec.describe UserRegion, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:region) }
    let(:name) { "UserRegion" }
  end
end