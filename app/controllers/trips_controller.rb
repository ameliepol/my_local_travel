class TripsController < ApplicationController
  def create
    @search = Search.new(search_params)
    @moods = Activity.moods
    @budgets = Activity.budgets
    @radiuses = Trip.radius
    if @search.valid?
      @trip = Trip.new(start_date: @search.start_date, address: @search.address, radius: @search.radius, user: current_user, end_date: @search.start_date, mood: @search.mood, budget: @search.budget)
      @trip.save!
      @search.days_number.times { Day.create!(trip: @trip) }
      redirect_to edit_trip_path(@trip)
    else

      render "searches/new"
    end
  end

  def show
    @trip = Trip.find(params[:id])

    @markers = Activity.all.map do |activity|
      if activity.category == "Hébergement"
        truc = "picto_hebergement.png"
      elsif activity.category == "Restauration"
        truc = "picto_alimentation.png"
      elsif activity.category == "Diurne"
        truc = "picto_diurne.png"
      else
        truc = "picto_nocturne.png"
      end

      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { activity: activity }),
        image_url: helpers.asset_url(truc)
      }
    end

    @coords = Activity.all.map do |activity|
      "#{activity[:longitude]},#{activity[:latitude]}"
    end
  end


  def index
    @trips = Trip.all.order(updated_at: :desc)
  end

  def edit
    @trip = Trip.find(params[:id])

    @days_number = @trip.days.count

    @activities = Activity.with_attached_photos.where(mood: @trip.mood, budget: @trip.budget).geocoded
    @markers = @activities.map do |activity|
      if activity.category == "Hébergement"
        truc = "picto_hebergement.png"
      elsif activity.category == "Restauration"
        truc = "picto_alimentation.png"
      elsif activity.category == "Diurne"
        truc = "picto_diurne.png"
      else
        truc = "picto_nocturne.png"
      end

      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { activity: activity }),
        image_url: helpers.asset_url(truc)
      }
    end
  end

  def update
    @trip = Trip.find(params[:id])
    redirect_to trip_path(@trip)
  end

  private
  def search_params
    params.require(:search).permit(:mood, :budget, :days_number, :address, :start_date, :radius)
  end
end
