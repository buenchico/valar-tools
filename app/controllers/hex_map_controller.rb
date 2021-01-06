class HexMapController < ApplicationController
  before_action :logged_in_user
  before_action :set_house, only: [:index_faction]

  def index
    abs_coords = []
    if current_user.try(:is_master?)
      @sectors = Sector.all
    else
      @sectors = User.find_by(player: current_user.player).house.sectors
    end

    @sectors.each do |hex|
      abs_coords << hex.r.abs
      abs_coords << hex.q.abs
    end

    @hex_rings = ( abs_coords.max || 0 ) + 1

    @hex_map = {}

    @sectors.each do |hex|
      @hex_map[hex.q] = {} if @hex_map[hex.q].nil?

      if (hex.sector_houses.exists?(house: current_user.house) || current_user.try(:is_master?)) && hex.sector_houses.find_by(house: current_user.house.id).try(:info_lvl) != 0
        @hex_map[hex.q][hex.r] = {
          :name=> hex.name,
          :type=> hex.sector_type,
          :info=> hex.sector_houses.find_by(house: current_user.house).try(:info_lvl) || 'Master',
          :desc=> hex.desc,
        }
        if hex.system != nil
          if hex.sector_houses.find_by(house: current_user.house).try(:info_lvl) == 'Colonizado' || current_user.try(:is_master?)
            @hex_map[hex.q][hex.r][:system] = hex.system.as_json.merge({slots_free: hex.system.slots_free, ic_prod: hex.system.ic_prod, rp_prod: hex.system.rp_prod, cp_prod: hex.system.cp_prod, civ: hex.system.try(:user).try(:house).try(:name)})
          elsif hex.sector_houses.find_by(user: current_user.house).try(:info_lvl) == 3
            @hex_map[hex.q][hex.r][:system] = hex.system.as_json(:only => [:slots]).merge({slots_free: hex.system.slots_free, civ: hex.system.user.house.name})
          elsif hex.sector_houses.find_by(user: current_user.house).try(:info_lvl) == 2
            @hex_map[hex.q][hex.r][:system] = hex.system.as_json(:only => [:slots])
          end
        else
          @hex_map[hex.q][hex.r][:system] = nil
        end
      end
    end
  end

  private
  def logged_in_user
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to root_url
    end
  end
end
