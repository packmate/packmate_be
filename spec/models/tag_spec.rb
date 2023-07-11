require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe 'associations' do
    it { should have_many(:item_tags).dependent(:destroy) }
    it { should have_many(:items).through(:item_tags) }
  end

  describe 'validations' do
    it { should validate_presence_of(:category) }
  end
end
