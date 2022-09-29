require 'rails_helper'
# require './test_helper'

RSpec.describe Company, type: :model do
  describe 'associations' do
    it { should belong_to(:country) }
    it { should belong_to(:state) }
    it { should belong_to(:city) }
    let(:name) { "Company 1" }

  end
end