class Design < ApplicationRecord
  belongs_to :house

  validates :name, presence: true
  validates :size, :inclusion => {:in => [2,4,8,12,20,50,100,500]}


  $ship_sizes = {
    2 => 'Escuadrón de cazas',
    4 => 'Corbeta',
    8 => 'Fragata',
    12 => 'Destructor',
    20 => 'Crucero',
    50 => 'Acorazado',
    100 => 'Titán',
    500 => 'Coloso estelar'
  }

  $modules = {:none=>"Vacío"}.merge($tech_types.select {|k,v| k[0,4] == ('navy' || 'misc')})

  $systems = $tech_types.select {|k,v| k[0,4] == ('sys_' || 'misc')}

  $hp_per_mod = 5
  $dmg_per_las = 2
  $dmg_per_mass = 1
  $dmg_per_tech = 0.1
  $def_per_shield = 1
  $def_per_shield_tech = 0.1
  $hp_per_armor = 5
  $hp_per_armor_tech = 0.1

  def ship_type
    $ship_sizes[self.size]
  end

  def mod_navy_las
    [self.modules.flatten.count('navy_las'),self.modules.flatten.index('navy_las').nil? ? 0 : (self.modules.flatten[self.modules.flatten.index('navy_las') + 1]).to_i]
  end

  def mod_navy_mass
    [self.modules.flatten.count('navy_mass'),self.modules.flatten.index('navy_mass').nil? ? 0 : (self.modules.flatten[self.modules.flatten.index('navy_mass') + 1]).to_i]
  end

  def mod_navy_armor
    [self.modules.flatten.count('navy_armor'),self.modules.flatten.index('navy_armor').nil? ? 0 : (self.modules.flatten[self.modules.flatten.index('navy_armor') + 1]).to_i]
  end

  def mod_navy_shields
    [self.modules.flatten.count('navy_shields'),self.modules.flatten.index('navy_shields').nil? ? 0 : (self.modules.flatten[self.modules.flatten.index('navy_shields') + 1]).to_i]
  end

  def mod_misc
    self.modules.flatten.count('misc')
  end

  def mod_none
    self.modules.flatten.count('none')
  end

  def desp
    self.size * 10
  end

  def hp
    self.size * $hp_per_mod + (self.mod_navy_armor[0].to_i * $hp_per_armor * (1 + (self.mod_navy_armor[1].to_f - 1) * $hp_per_armor_tech))
  end
end
