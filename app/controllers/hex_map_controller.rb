class HexMapController < ApplicationController
  def index
    abs_coords = []
    User.find_by(player: 'Nemo').sectors.each do |x|
      abs_coords << x.r.abs
      abs_coords << x.q.abs
    end
    @hex_rings = abs_coords.max + 1

    @hex_map = {}
    User.find_by(player: 'Nemo').sector_users.each do |hex|
      @hex_map[hex.sector.q] = {} if @hex_map[hex.sector.q].nil?
      if hex.info == 3
        @hex_map[hex.sector.q][hex.sector.r] = {:name=> hex.sector.name, :type=> hex.sector.sector_type, :info=> hex.info}
      elsif hex.info == 2
        @hex_map[hex.sector.q][hex.sector.r] = {:name=> nil, :type=> hex.sector.sector_type, :info=> hex.info}
      elsif hex.info == 1
        @hex_map[hex.sector.q][hex.sector.r] = {:name=> nil, :type=> hex.sector.sector_type, :info=> hex.info}
      end
    end
  end
end
