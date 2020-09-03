class SelectedActivitiesController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:create]

  def create
    @selected_activity = SelectedActivity.new
    @trip = Trip.find(params[:trip_id])
    @day = @trip.days.first

    @activity = Activity.find(params[:activity_id])
    @selected_activity.day = @day
    @selected_activity.activity = @activity

    @selected_activity.save
    respond_to do |format|
      format.html { redirect_to edit_trip_path(@trip) }
      format.js
    end
  end


def update
  @selected_activity = SelectedActivity.find(params[:id])
  @selected_activity.day = @day_id
  @selected_activity.day.update
end

end
