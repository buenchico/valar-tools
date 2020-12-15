class HexMapController < ApplicationController
  def index
    @hex_map = {0=>{
                  0=>{:name=>"Coruscant", :type=>"star-red", :info=>1},
                  1=>{:name=>"Tattoine", :type=>"star-red", :info=>3}
                },
                1=>{
                  2=> {:name=>"Sol", :type=>"star-red", :info=>2}
                },
                -3=>{
                  3=> {:type=>"empty", :info=>2},
                  2=> {:type=>"empty", :info=>2},
                  1=> {:type=>"empty", :info=>2},
                  0=> {:type=>"empty", :info=>2}
                }
              }
  end
end
