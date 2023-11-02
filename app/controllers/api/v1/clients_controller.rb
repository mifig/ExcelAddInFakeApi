class Api::V1::ClientsController < ApplicationController
  def show
    client = Client.find_by(client_id: params[:id])

    if client
      render json: client.attributes
    else
      render json: {
        status: "ERROR",
        message: "No client found with id #{params[:id]}"
      }
    end
  end
end
