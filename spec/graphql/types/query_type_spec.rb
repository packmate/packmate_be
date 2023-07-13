require 'rails_helper'

require 'rails_helper'

module Types
  RSpec.describe QueryType, type: :request do
    describe '.items(category:)' do
      before do
        @everything = Tag.create!(category: 'Everything')

        @camping_tag = Tag.create!(category: 'Camping')
        @camping_tag.items.create!(name: 'Portable Coffee Maker')
        @camping_tag.items.create!(name: 'Campsite Games')
        @camping_tag.items.create!(name: 'Smores')

        @hiking_tag = Tag.create!(category: 'Hiking')
        @hiking_tag.items.create!(name: 'Hiking Boots')
        @hiking_tag.items.create!(name: 'Hiking Poles') 
        @hiking_tag.items.create!(name: 'Hiking Backpack')

        @climbing_tag = Tag.create!(category: 'Climbing')
        @climbing_tag.items.create!(name: 'Climbing Shoes')
        @climbing_tag.items.create!(name: 'Climbing Rope')
        @climbing_tag.items.create!(name: 'Climbing Harness')

        @kayaking_tag = Tag.create!(category: 'Kayaking')
        @kayaking_tag.items.create!(name: 'Kayak')
        @kayaking_tag.items.create!(name: 'Paddle')
        @kayaking_tag.items.create!(name: 'Life Jacket')

        @mtn_bike_tag = Tag.create!(category: 'Mountain Biking')
        @mtn_bike_tag.items.create!(name: 'Mountain Bike')
        @mtn_bike_tag.items.create!(name: 'Helmet')
        @mtn_bike_tag.items.create!(name: 'Bike Lock')

        @backpacking_tag = Tag.create!(category: 'Backpacking')
        @backpacking_tag.items.create!(name: 'Backpack')
        @backpacking_tag.items.create!(name: 'Tent')
        @backpacking_tag.items.create!(name: 'Sleeping Bag')

        @fishing_tag = Tag.create!(category: 'Fishing')
        @fishing_tag.items.create!(name: 'Fishing Pole')
        @fishing_tag.items.create!(name: 'Fishing Lures')
        @fishing_tag.items.create!(name: 'Fishing Net')

        Item.all.each do |item|
          ItemTag.create!(item_id: item.id, tag_id: @everything.id)
        end

      end

      it 'returns camping items' do
        post '/graphql', params: { query: query("Camping") }
        data = JSON.parse(response.body)['data']
        expect(data['items'].length).to eq(3)
        expect(data['items'][0]['name']).to eq('Portable Coffee Maker')
        expect(data['items'][1]['name']).to eq('Campsite Games')
        expect(data['items'][2]['name']).to eq('Smores')
      end

      it 'returns hiking items' do
        post '/graphql', params: { query: query("Hiking") }
        data = JSON.parse(response.body)['data']
        expect(data['items'].length).to eq(3)
        expect(data['items'][0]['name']).to eq('Hiking Boots')
        expect(data['items'][1]['name']).to eq('Hiking Poles')
        expect(data['items'][2]['name']).to eq('Hiking Backpack')
      end

      it 'returns climbing items' do 
        post '/graphql', params: { query: query("Climbing") }
        data = JSON.parse(response.body)['data']
        expect(data['items'].length).to eq(3)
        expect(data['items'][0]['name']).to eq('Climbing Shoes')
        expect(data['items'][1]['name']).to eq('Climbing Rope')
        expect(data['items'][2]['name']).to eq('Climbing Harness')
      end

      it 'returns kayaking items' do
        post '/graphql', params: { query: query("Kayaking") }
        data = JSON.parse(response.body)['data']
        expect(data['items'].length).to eq(3)
        expect(data['items'][0]['name']).to eq('Kayak')
        expect(data['items'][1]['name']).to eq('Paddle')
        expect(data['items'][2]['name']).to eq('Life Jacket')
      end

      it 'returns mountain biking items' do
        post '/graphql', params: { query: query("Mountain Biking") }
        data = JSON.parse(response.body)['data']
        expect(data['items'].length).to eq(3)
        expect(data['items'][0]['name']).to eq('Mountain Bike')
        expect(data['items'][1]['name']).to eq('Helmet')
        expect(data['items'][2]['name']).to eq('Bike Lock')

      end

      it 'returns backpacking items' do
        post '/graphql', params: { query: query("Backpacking") }
        data = JSON.parse(response.body)['data']
        expect(data['items'].length).to eq(3)
        expect(data['items'][0]['name']).to eq('Backpack')
        expect(data['items'][1]['name']).to eq('Tent')
        expect(data['items'][2]['name']).to eq('Sleeping Bag')
      end

      it 'returns fishing items' do
        post '/graphql', params: { query: query("Fishing") }
        data = JSON.parse(response.body)['data']
        expect(data['items'].length).to eq(3)
        expect(data['items'][0]['name']).to eq('Fishing Pole')
        expect(data['items'][1]['name']).to eq('Fishing Lures')
        expect(data['items'][2]['name']).to eq('Fishing Net')
      end

      it 'returns everything items' do
        post '/graphql', params: { query: query("Everything") }
        data = JSON.parse(response.body)['data']
        expect(data['items'].length).to eq(21)
        expect(data['items'][0]['name']).to eq('Portable Coffee Maker')
        expect(data['items'][1]['name']).to eq('Campsite Games')
        expect(data['items'][2]['name']).to eq('Smores')
        expect(data['items'][3]['name']).to eq('Hiking Boots')
        expect(data['items'][4]['name']).to eq('Hiking Poles')
        expect(data['items'][5]['name']).to eq('Hiking Backpack')
        expect(data['items'][6]['name']).to eq('Climbing Shoes')
        expect(data['items'][7]['name']).to eq('Climbing Rope')
        expect(data['items'][8]['name']).to eq('Climbing Harness')
        expect(data['items'][9]['name']).to eq('Kayak')
        expect(data['items'][10]['name']).to eq('Paddle')
        expect(data['items'][11]['name']).to eq('Life Jacket')
        expect(data['items'][12]['name']).to eq('Mountain Bike')
        expect(data['items'][13]['name']).to eq('Helmet')
        expect(data['items'][14]['name']).to eq('Bike Lock')
        expect(data['items'][15]['name']).to eq('Backpack')
        expect(data['items'][16]['name']).to eq('Tent')
        expect(data['items'][17]['name']).to eq('Sleeping Bag')
        expect(data['items'][18]['name']).to eq('Fishing Pole') 
        expect(data['items'][19]['name']).to eq('Fishing Lures')
        expect(data['items'][20]['name']).to eq('Fishing Net')
      end
    end

    def query(category)
      <<~GQL
        query{
          items(category:"#{category}") {
            id
            name
          }
        }
      GQL
    end
  end
end