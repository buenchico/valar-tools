class SystemsController < ApplicationController
  def index
    @systems = System.all.order(:id)
  end
end
