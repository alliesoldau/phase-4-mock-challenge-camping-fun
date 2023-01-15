class ActivitiesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_activity_not_found
  
  def index
    activity = Activity.all
    render json: activity, status: :ok
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    head :no_content, status: :ok
  end

  private

  def render_activity_not_found
    render json: { error: "Activity not found" }, status: :not_found
  end
  
end
