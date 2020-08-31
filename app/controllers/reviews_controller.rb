class ReviewsController < ApplicationController

  def new
    @trip = Trip.find(params[:trip_id])
    @review = Review.new
  end


  def create

  end


end
