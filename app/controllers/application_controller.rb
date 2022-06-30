class ApplicationController < ActionController::API

  def index
    birds = Bird.all
    render json: birds
  end 

  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: bird
    else 
      render json: {error: 'no bird found'}, status: :not_found
    end
    
  end
  
end