require 'rails_helper'
RSpec.describe Entity, type: :model do
	describe 'associations' do
    it { should belongs_to(:sentence) }
  end
end