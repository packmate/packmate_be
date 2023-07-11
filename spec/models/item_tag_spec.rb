require 'rails_helper'

RSpec.describe ItemTag, type: :model do
  describe 'associations' do
    it { should belong_to(:item) }
    it { should belong_to(:tag) }
  end
end
