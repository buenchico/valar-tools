class Tech < ApplicationRecord
  belongs_to :house
  validates :lvl, presence: true
  validates :name, presence: true
  validates_uniqueness_of :name, :scope => [:house]

  $tech_types = {
    'ic': 'Capacidad industria',
    'rp': 'Ciencia base',
    'cp': 'Estructuras sociales',
    'navy_las': 'Armas de energía',
    'navy_mass': 'Armas inerciales',
    'navy_armor': 'Blindajes',
    'navy_shields': 'Escudos',
    'ftl': 'Motores FTL',
    'engine': 'Motores convencionales',
    'army_atk': 'Armas terrestres',
    'army_def': 'Defensas terrestres',
    'misc': 'Otras tecnologías'
  }
  validates_inclusion_of :tech_type, :in => $tech_types.collect {|k,v| k.to_s}
end
