class TripsController < ApplicationController

  def show
  end

  def index

  end


  def edit
    @activities = Activity.geocoded

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
  end

  def create
  end

  def destroy
  end

end
