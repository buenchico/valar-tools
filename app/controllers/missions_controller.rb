class MissionsController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def recipe
    template = params[:recipe] || 'new'
    respond_to do |format|
      format.html { render template }
    end
  end

  def calculate
    respond_to :html, :js
  end
end
