require 'rails_helper'

RSpec.describe Client, type: :api do
  describe "#list_all_breeds" do
    before do
      stub_request(:get, "https://dogapi.dog/api/v2/breeds")
        .to_return(status: 200, body: '[{"id": 1, "name": "Caucasian Shepherd Dog"}, {"id": 2, "name": "Bouvier des Flandres"}]')
    end

    it 'fetches the list of all breeds' do
      expect(Client.list_all_breeds).to eq(JSON.parse('[{"id": 1, "name": "Caucasian Shepherd Dog"}, {"id": 2, "name": "Bouvier des Flandres"}]'))
    end
  end

  describe "#get_breed_info" do
    let(:breed_id) { 1 }
    
    before do
      stub_request(:get, "https://dogapi.dog/api/v2/breeds/#{breed_id}")
        .to_return(status: 200, body: '{"id": 1, "name": "Caucasian Shepherd Dog"}')
    end

    it 'fetches information for a specific breed' do
      expect(Client.get_breed_info(breed_id)).to eq(JSON.parse('{"id": 1, "name": "Caucasian Shepherd Dog"}'))
    end
  end
end
