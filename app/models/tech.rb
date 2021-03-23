class Tech < ApplicationRecord
  belongs_to :house
  validates :lvl, presence: true
  validates :name, presence: true
  validates_uniqueness_of :name, :scope => [:house]
  validates_uniqueness_of :lvl, :scope => [:tech_type,:house], :unless => Proc.new { |obj| obj.tech_type == 'misc' }

  $tech_types = {
    'ic': 'Capacidad industrial',
    'rp': 'Ciencia base',
    'cp': 'Estructuras sociales',
    'navy_las': 'Armas de energía',
    'navy_mass': 'Armas inerciales',
    'navy_armor': 'Blindajes',
    'navy_shields': 'Escudos',
    'ftl': 'Motores FTL',
    'engine': 'Motores convencionales',
    'sensors': 'Sensores',
    'stealth': 'Sigilo',
    'army_atk': 'Armas terrestres',
    'army_def': 'Defensas terrestres',
    'dock': 'Construcción de naves',
    'misc': 'Otras tecnologías'
  }
  validates_inclusion_of :tech_type, :in => $tech_types.collect {|k,v| k.to_s}

  attribute :obsolete, :boolean

  def obsolete
    self.lvl == Tech.where(house: self.house).where(tech_type: self.tech_type).maximum('lvl') ? false : true
  end
end
