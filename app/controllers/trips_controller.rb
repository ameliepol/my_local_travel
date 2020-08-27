class TripsController < ApplicationController
  def create
    @search = Search.new(search_params)
    if @search.valid?
      @trip = Trip.new(start_date: @search.start_date, address: @search.address, radius: @search.radius, user: current_user, end_date: @search.start_date, mood: @search.mood, budget: @search.budget)
      @days_number = @search.days_number.times { Day.create(trip: @trip) }
      redirect_to edit_trip_path(@trip)
    else
      render "searches/new"
    end
  end

  def edit
    @trip = Trip.find(params[:id])
    @activities = Activity.where(mood: @trip.mood, budget: @trip.budget)
  end

  private

  def search_params
    params.require(:search).permit(:mood, :budget, :days_number, :address, :start_date, :radius)
  end
end
