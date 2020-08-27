class SelectedActivitiesController < ApplicationController

  link_to("+", trip_selected_activities_path(@trip, activity_id: @activity.id))

  def create
    @selected_activity = Selected_activity.new(selected_activity_params)
    @trip = Trip.find(params[:trip_id])
    @day = @trip.days.first
    @activity = Activity.find(params[:trip_id])
    @selected_activity.trip = @selected_activity
    @selected_activity.save

  end
end


