class CampersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found 
  
  def index
    campers = Camper.all 
    render json: campers, status: :ok
  end

  def show
    camper = Camper.find(params[:id])
    render json: camper, include: :activities, status: :ok
  end

  def create
    camper = Camper.create!(camper_params)
    render json: camper, status: :created
  rescue ActiveRecord::RecordInvalid => invalid
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  private 
  
  def camper_params
    params.permit(:name, :age)
  end

  def render_record_not_found 
    render json: { errors: "Camper not found" }, status: :not_found
  end

end
