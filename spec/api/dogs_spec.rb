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

  describe "#get_breed_groups" do
    before do
      stub_request(:get, "https://dogapi.dog/api/v2/groups")
        .to_return(status: 200, body: '[{"id": 1, "name": "Caucasian Shepherd Dog"}, {"id": 2, "name": "Bouvier des Flandres"}]')
    end

    it 'fetches the grpups of all breeds' do
      expect(Client.get_breed_groups).to eq(JSON.parse('[{"id": 1, "name": "Caucasian Shepherd Dog"}, {"id": 2, "name": "Bouvier des Flandres"}]'))
    end
  end

  describe "#get_group_info" do
    let(:group_id) { 'b8e4e89d-057f-432a-9e58-0b85b29b693c' }
    
    before do
      stub_request(:get, "https://dogapi.dog/api/v2/groups/#{group_id}")
        .to_return(status: 200, body: '{"id": "b8e4e89d-057f-432a-9e58-0b85b29b693c", "type": "group"}')
    end

    it 'fetches information for a specific breed' do
      expect(Client.get_group_info(group_id)).to eq(JSON.parse('{"id": "b8e4e89d-057f-432a-9e58-0b85b29b693c", "type": "group"}'))
    end
  end
end
