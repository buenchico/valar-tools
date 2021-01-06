class Resource < ApplicationRecord
  belongs_to :house
  validates_uniqueness_of :house_id

  def ic_prod
    ic_prod = 0
    self.house.systems.each do |system|
      ic_prod += ( system.ic_prod * self.ic_bonus * self.efficiency )
    end
    return ic_prod
  end

  def rp_prod
    rp_prod = 0
    self.house.systems.each do |system|
      rp_prod += ( system.rp_prod * self.rp_bonus * self.efficiency )
    end
    return rp_prod
  end

  def cp_prod
    cp_prod = 0
    self.house.systems.each do |system|
      cp_prod += ( system.cp_prod * self.cp_bonus * self.efficiency )
    end
    return cp_prod
  end
end
