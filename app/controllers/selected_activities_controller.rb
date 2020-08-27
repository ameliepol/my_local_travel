class SelectedActivitiesController < ApplicationController
  def create
    @selected_activity = SelectedActivity.new
    @trip = Trip.find(params[:trip_id])
    @day = @trip.days.first

    @activity = Activity.find(params[:activity_id])
    @selected_activity.day = @day
    @selected_activity.activity = @activity

    @selected_activity.save
    redirect_to edit_trip_path(@trip)
  end


end
