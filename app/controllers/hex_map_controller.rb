class HexMapController < ApplicationController
  before_action :logged_in_user
  before_action :set_house, only: [:index_faction]

  def index
    abs_coords = []
    if current_user.try(:is_master?)
      Sector.all.each do |x|
        abs_coords << x.r.abs
        abs_coords << x.q.abs
      end
    else
      User.find_by(player: current_user.player).sectors.each do |x|
        abs_coords << x.r.abs
        abs_coords << x.q.abs
      end
    end
    @hex_rings = ( abs_coords.max || 0 ) + 1

    @hex_map = {}
    if current_user.try(:is_master?)
      Sector.all.each do |hex|
        @hex_map[hex.q] = {} if @hex_map[hex.q].nil?

        if hex.system.nil? then
          system =  [hex.id]
        else
          system = [
            hex.id,
            hex.system.slots,
            hex.system.ic_bonus,
            hex.system.rp_bonus,
            hex.system.cp_bonus,
            hex.system.user.nil? ? 'Sin colonizar' : hex.system.user.house]
        end

        @hex_map[hex.q][hex.r] = {
          :name=> hex.name,
          :type=> hex.sector_type,
          :info=> 'Master',
          :desc=> hex.desc,
          :system => system
          }
      end
    else
      User.find_by(player: current_user.player).sector_users.each do |hex|
        @hex_map[hex.sector.q] = {} if @hex_map[hex.sector.q].nil?

        if hex.sector.system.nil? then
          system =  [hex.id]
        else
          system = [
            hex.sector.id,
            hex.sector.system.slots,
            hex.sector.system.ic_bonus,
            hex.sector.system.rp_bonus,
            hex.sector.system.cp_bonus,
            hex.sector.system.user.nil? ? 'Sin colonizar' : hex.sector.system.user.house]
        end

        @hex_map[hex.sector.q][hex.sector.r] = {
          :name=> hex.sector.name,
          :type=> hex.sector.sector_type,
          :info=> hex.info_lvl,
          :desc=> hex.sector.desc,
          :system => system
        }

        if hex.info_lvl == 2
          @hex_map[hex.sector.q][hex.sector.r][:name] = 'Desconocido'
          @hex_map[hex.sector.q][hex.sector.r][:system] = @hex_map[hex.sector.q][hex.sector.r][:system].take(2)
        elsif hex.info_lvl == 1
          @hex_map[hex.sector.q][hex.sector.r][:name] = 'Desconocido'
          @hex_map[hex.sector.q][hex.sector.r][:desc] = nil
          @hex_map[hex.sector.q][hex.sector.r][:system] = @hex_map[hex.sector.q][hex.sector.r][:system].take(1)
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
