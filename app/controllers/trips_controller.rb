class TripsController < ApplicationController

  def show
  end

  def index
    @activities = Activity.geocoded

    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { activities: activity }),
        image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end


  def edit
  end

  def update
  end

  def create
  end

  def destroy
  end

end
