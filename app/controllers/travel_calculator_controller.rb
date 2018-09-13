class TravelCalculatorController < ApplicationController
  
  def index
    @terrain_type = [ 'Llanuras', 'Caminos', 'Abrupto', 'Montañas' ]
    @walking_type = [ 'Normal', 'Forzada', 'Cuidadosa', 'Forrajeando' ]
    @sailing_type = [ 'Normal', 'Forzada', 'Cuidadosa' ]
    @obstacle_type = ['Ninguno', 'Vado', 'Puente', 'Río', 'Estrecho']
    
    @sea_type = [ 'Costa', 'Mar Abierto', 'Río']
    @fleet_type = ['Rápida', 'Normal', 'Lenta']
  end
  
  def location_list
  #Column name must be between double quotes because, by default, pgsql column names are always lowercase
    @locations_list = Location.order(:NAME_ES).where('LOWER("NAME_ES") like ?', "%#{params[:term].downcase}%")
    @locations_list  = @locations_list.limit(20)
    render json: @locations_list.map(&:NAME_ES)
  end

  def calculate
    respond_to :html, :js
  
  #get info about the journey from the form
    @from = params[:from] != "" ? params[:from] : "Origen"
    @to = params[:to] != "" ? params[:to] : "Destino"
    @size = params[:size].to_i
    @carts = params[:carts].to_i * 5
    @fleet_type = params[:fleet_type]

    @step = params[:step].nil? ? 0 : params[:step].to_unsafe_h
    @step_sea = params[:step_sea].nil? ? 0 : params[:step_sea].to_unsafe_h

  #base speed
    @base_land = 10
    @base_sea = 4

  #speed modificators
    @terrain_speed = {'Llanuras': 0, 'Caminos': -3, 'Abrupto': 3, 'Montañas': 8, 'Costa': 0, 'Mar Abierto': 3, 'Río': 3 }
    @walking_speed = {'Normal': 0, 'Forzada': -3, 'Cuidadosa': 3 , 'Forrajeando': 8 }
    @sailing_speed = {'Normal': 0, 'Forzada': -1, 'Cuidadosa': 1 }
    @obstacle_speed = {'Ninguno': 0,'Vado': 8, 'Puente': 3, 'Río': 24, 'Estrecho': 24 }
    @fleet_speed = {'Rápida': 0, 'Normal': 1, 'Lenta': 3 }

  #walking adjetive
    @walking_adj = {'Normal': 'normalmente', 'Forzada': 'forzadamente', 'Cuidadosa': 'sigilosamente' , 'Forrajeando': 'forrajeando'}
    
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
    
    if @step == 0
      0.upto(@step_sea.length - 1) do |x|
        @time << @step_sea[x.to_s][:hex].to_i * ( @base_sea + @fleet_speed[@fleet_type.to_sym] + @terrain_speed[@step_sea[x.to_s][:terrain].to_sym] + @sailing_speed[@step_sea[x.to_s][:speed].to_sym] + @size_mod ) + ((4 + @fleet_speed[@fleet_type.to_sym] * 2 ) * @step_sea[x.to_s][:board].to_i )
      end
    elsif @step_sea == 0
      0.upto(@step.length - 1) do |x|
        @time << @step[x.to_s][:hex].to_i * ( @base_land + @terrain_speed[@step[x.to_s][:terrain].to_sym] + @walking_speed[@step[x.to_s][:speed].to_sym] + @carts + @size_mod ) + @obstacle_speed[@step[x.to_s][:obstacle].to_sym].to_i
      end
    else
      @time << 5000
    end

      @days = @time.sum.round / 24
      @days_word = @days == 1 ? "día" : "días"
      @hours = @time.sum %  24

  end
end