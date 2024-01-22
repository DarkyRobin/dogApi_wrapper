class DogsController < ApplicationController
  def index
    api_client = Api::Client.new
    @breeds = api_client.list_all_breeds
  end
end
