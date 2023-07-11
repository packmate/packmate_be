require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'associations' do
    it { should have_many(:item_tags).dependent(:destroy) }
    it { should have_many(:tags).through(:item_tags) }
    it { should have_many(:list_items).dependent(:destroy) }
    it { should have_many(:lists).through(:list_items) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
