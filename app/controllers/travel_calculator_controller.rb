class TravelCalculatorController < ApplicationController
  
  def index
    @terrain_type = [ 'Llanuras', 'Caminos', 'Bosques', 'Desiertos', 'Montañas' ]
    @walking_type = [ 'Normal', 'Marchas forzadas', 'Marcha cuidadosa' ]
    @obstacle_type = ['Ninguno', 'Vado', 'Puente', 'Río', 'Estrecho']
  end

  def calculate
  #get info about the journey from the form
    @from = params[:from] != "" ? params[:from] : "Origen"
    @to = params[:to] != "" ? params[:to] : "Destino"
    @size = params[:size].to_i
    @carts = params[:carts].to_i * 5
    
    @step = params[:step].to_unsafe_h

  #base speed
    @base = 10

  #speed modificators
    @terrain_speed = {'Llanuras': 0, 'Caminos': -3, 'Bosques': 3, 'Desiertos': 3, 'Montañas': 8}
    @walking_speed = {'Normal': 0, 'Marchas forzadas': -3, 'Marcha cuidadosa': 3}
    @obstacle_speed = {'Ninguno': 0,'Vado': 8, 'Puente': 3, 'Río': 24, 'Estrecho': 24}

  #walking adjetive
    @walking_adj = {'Normal': 'normalmente', 'Marchas forzadas': 'forzadamente', 'Marcha cuidadosa': 'sigilosamente'}
    
  #size modificator
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
    
  #time calculations  
    @time = []
    0.upto(@step.length - 1) do |x|
        @time << @step[x.to_s][0].to_i * ( @base + @terrain_speed[@step[x.to_s][1].to_sym] + @walking_speed[@step[x.to_s][2].to_sym] + @carts + @size_mod ) + @obstacle_speed[@step[x.to_s][3].to_sym].to_i
    end    

    @days = @time.sum / 24
    @days_word = @days == 1 ? "día" : "días"
    @hours = @time.sum %  24

  end
end