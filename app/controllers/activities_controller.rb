class ActivitiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        render json: Activity.all, status: :ok
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        render json: {}
    end

    private

    def render_not_found
        # render json: { error: "#{ error.model } not found" }, status: :not_found
        render json: { error: "Activity not found" }, status: :not_found
    end
end
