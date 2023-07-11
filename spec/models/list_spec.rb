require 'rails_helper'

RSpec.describe List, type: :model do
  describe 'associations' do
    it { should have_many(:list_items).dependent(:destroy) }
    it { should have_many(:items).through(:list_items) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:trip_type) }
  end
end
