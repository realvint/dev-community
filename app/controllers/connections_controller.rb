class ConnectionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @requested_connections = current_user.connections.where(user_id: current_user.id)
    @received_connections  = Connection.where(connected_user_id: current_user.id)
  end

  def create
    @connection = current_user.connections.new(connection_params)
    @connector  = User.find(connection_params[:connected_user_id])

    @connection.save

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def connection_params
    params.require(:connection).permit(:user_id, :connected_user_id, :status)
  end
end
