class SearchesController < ApplicationController

  def new
    @search = Search.new
    @moods = Activity.moods
    @budgets = Activity.budgets

  end

end
