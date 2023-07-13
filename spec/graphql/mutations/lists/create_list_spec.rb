require 'rails_helper'

module Mutations
  module Lists
    RSpec.describe CreateList, type: :request do
      describe '.resolve' do
        context 'with valid name' do
          it 'creates a list' do
            expect(List.count).to eq(0)

            expect do
              post '/graphql', params: { query: query }
            end.to change { List.count }.by(1)
          end

          it 'returns a list' do
            post '/graphql', params: { query: query }
            data = JSON.parse(response.body)['data']['createList']

            expect(data['list']['id']).to be_present
            expect(data['list']['name']).to eq('New List')
            expect(data['list']['tripType']).to eq('Hiking')
            data['list']['items'].each do |item|
              expect(item['id']).to be_present
              expect(item['name']).to be_present
            end
            expect(data['errors']).to be_empty
          end
        end
      end

      def query
        <<~GQL
          mutation{
            createList(input:{
              name: "New List"
              tripType: "Hiking"
              items: ["Hiking Boots", "Sunscreen"]
            }){
              list {
                id
                name
                tripType
                items {
                  id
                  name
                }
                createdAt
                updatedAt
              }
              errors
            }
          }
        GQL
      end
    end
  end
end
