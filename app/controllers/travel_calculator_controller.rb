class TravelCalculatorController < ApplicationController
  def index
    @terrain_type = { 'Llanuras': 0, 'Caminos': -3, 'Bosques': 3, 'Desiertos': 3, 'Montañas': 8 }
    @walking_type = {'Normal': 0, 'Marchas forzadas': -3, 'Marcha cuidadosa': 3}
    @obstacle_type = {'Vado': 8, 'Puente': 3, 'Río': 24, 'Estrecho': 24}
    @ship_type = {'Galeras': 4, 'Barcoluengos': 2.5, 'Barcazas': 6}
  end

  def calculate
  #get info about the journey from the form
    @from = params[:from]
    @to = params[:to]
    @speed = params[:speed].to_i
    @hex1 = params[:hex1].to_i
    @dif1 = params[:dif1].to_i
    @size = params[:size].to_i
    @obs = params[:obs]
      if @obs.nil?
        @obs_total = @obs.to_i
      else
        @obs_total = @obs.map(&:to_i).sum
      end
    
    @carts = params[:carts].to_i
    

  #base speed
  @base = 10

  #calculations
    if @size.to_i > 20
      @size_mod = 8
      elsif @size.to_i > 8
          @size_mod = 5
          elsif @size.to_i > 2
             @size_mod = 3
           elsif @size.to_i > 0
             @size_mod = 0
           else
             @size_mod = -2
    end
    
    @time = @hex1 * ( @base.to_i + @dif1 + @speed + @carts + @size_mod.to_i) + @obs_total
                        
  end
end