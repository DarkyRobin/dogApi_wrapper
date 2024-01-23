class DogsController < ApplicationController
  def show
    breeds = Client.list_all_breeds
    render json: breeds
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end

  def show_breed
    breed_id = params[:id] # Assuming you pass breed_id as a parameter
    breed_info = Client.get_breed_info(breed_id)
    render json: breed_info
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end

end
