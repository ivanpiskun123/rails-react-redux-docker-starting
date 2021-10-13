class Api::V1::UsersController < ApplicationController
  def index
    render json: {
        data: UserSerializer.new(User.order('created_at DESC')).serializable_hash
    }, status: :ok
  end

  def show
    
  end
end
