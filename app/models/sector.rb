class Sector < ApplicationRecord
  has_many :sector_users, :class_name => 'SectorUser'
  has_many :users, through: :sector_users

  accepts_nested_attributes_for :sector_users

  has_one :system
  validates_uniqueness_of :q, :scope => [:r]

  $sector_types = {'empty': 'Vacío', 'star-red': 'Estrella tipo K'}
  validates_inclusion_of :sector_type, :in => $sector_types.collect {|k,v| k.to_s}

end
