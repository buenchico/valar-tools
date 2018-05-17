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

    @step1 = params[:step1]
    @step2 = params[:step2]
    @step3 = params[:step3]
    @step4 = params[:step4]    

#    @speed = params[:speed].map(&:to_i)

#    @hex = params[:hex].map(&:to_i)
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

  #number of steps
    @steps = [ @step1[0], @step2[0], @step3[0], @step4[0] ]
    @steps_total = ( 4 - @steps.count("") )
    
    @time1 = @step1[0].to_i * ( @base + @terrain_speed[@step1[1].to_sym] + @walking_speed[@step1[2].to_sym] + @carts + @size_mod ) + @obstacle_speed[@step1[3].to_sym]
    @time2 = @step2[0].to_i * ( @base + @terrain_speed[@step2[1].to_sym] + @walking_speed[@step2[2].to_sym] + @carts + @size_mod ) + @obstacle_speed[@step2[3].to_sym]
    @time3 = @step3[0].to_i * ( @base + @terrain_speed[@step3[1].to_sym] + @walking_speed[@step3[2].to_sym] + @carts + @size_mod ) + @obstacle_speed[@step3[3].to_sym]
    @time4 = @step4[0].to_i * ( @base + @terrain_speed[@step4[1].to_sym] + @walking_speed[@step4[2].to_sym] + @carts + @size_mod ) + @obstacle_speed[@step4[3].to_sym]

    @time_total = @time1 + @time2 + @time3 + @time4
  
    @days = @time_total / 24
    @days_word = @days == 1 ? "día" : "días"
    @hours = @time_total %  24
  
  end
end