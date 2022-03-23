class DogsController < ApplicationController

  def index
    if current_user
      dog = Dog.all
      render json: dog
    else
      render json: {}, status: :unauthorized
    end
  end
end
