class SelectedActivitiesController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:create]

  def create
    @selected_activity = SelectedActivity.new
    @trip = Trip.find(params[:trip_id])
    @day = @trip.days.first

    @activity = Activity.find(params[:activity_id])
    @selected_activity.day = @day
    @selected_activity.activity = @activity
    @selected_activity.pending = true

    @selected_activity.save

    # redirect_to edit_trip_path(@trip)
    respond_to do |format|
      format.html { redirect_to edit_trip_path(@trip) }
      format.js
    end
  end


def update
  @selected_activity = SelectedActivity.find(params[:id])
  @selected_activity.pending = false
  @selected_activity.update(selected_activity_params)
  @trip = @selected_activity.day.trip
  # redirect_to edit_trip_path(@trip)
  respond_to do |format|
    format.html { redirect_to edit_trip_path(@trip) }
    format.js
  end
end

private

def selected_activity_params
  params.require(:selected_activity).permit(:day_id)
end



end
