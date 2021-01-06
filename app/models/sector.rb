class Sector < ApplicationRecord
  has_many :sector_houses, :class_name => 'SectorHouse'
  has_many :houses, through: :sector_houses

  accepts_nested_attributes_for :sector_houses

  has_one :system
  accepts_nested_attributes_for :system

  validates_uniqueness_of :q, :scope => [:r]

  $sector_types = {'empty': 'Vacío', 'star-red': 'Estrella tipo K'}
  validates_inclusion_of :sector_type, :in => $sector_types.collect {|k,v| k.to_s}

end
