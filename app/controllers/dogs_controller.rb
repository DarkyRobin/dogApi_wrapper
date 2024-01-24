class DogsController < ApplicationController
  def breeds
    breeds = Client.list_all_breeds
    render json: breeds
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end

  def breed_info
    breed_id = params[:id] 
    breed_info = Client.get_breed_info(breed_id)
    render json: breed_info
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end

  def breed_groups
    groups = Client.get_breed_groups
    render json: groups
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end

  def group_info
    group_id = params[:id] 
    group_info = Client.get_group_info(group_id)
    render json: group_info
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end

end
