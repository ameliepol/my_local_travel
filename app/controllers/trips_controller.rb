class TripsController < ApplicationController


  def create
    @start_date = Date.new(params[:search]["start_date(1i)"].to_i, params[:search]["start_date(2i)"].to_i, params[:search]["start_date(3i)"].to_i)
    @mood = params[:search][:mood].last.to_i
    @radius = params[:search][:radius].last.to_i
    @budget = params[:search][:budget].last.to_i
    @days = params[:search][:days].last.to_i
    @address = params[:search][:address]

    @search = Search.new(
      mood: @mood,
      days: @days,
      budget: @budget,
      start_date: @start_date,
      address: @address,
      radius: @radius
    )
    if @search.valid?

      @trip = Trip.new(start_date: @start_date, address: @address, radius: @radius, user: current_user, end_date: @start_date)


      # créer un trip à la volée ? Ou je fais appel à la bonne méthode de controller

      # créer des days sur ce trip
      @days.times do
        day = Day.new()
        day.trip = @trip
        day.save

      end

      redirect_to edit_trip_path(@trip, mood: @mood, budget: @budget)
      # redirect to trip#edit en lui passant mood, budget xxxx_path(@trip, mood: @mood, budget: @budget) potentiellement

    else
      render "searches/new"
    end
  end



    def edit
      @trip = Trip.find(params[:id])

    end

end
