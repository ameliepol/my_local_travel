class SearchesController < ApplicationController

  def new
    @search = Search.new
    @moods = Activity.moods
    @budgets = Activity.budgets
    @radiuses = Trip.radius
  end

end
