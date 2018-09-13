class MissionsController < ApplicationController
  def index
    @test = ['test1', 'test2']
  end

  def missions_list
  end

  def calculate
    respond_to :html, :js
  end
end
