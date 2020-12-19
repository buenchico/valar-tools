class Sector < ApplicationRecord
  has_many :sector_users, :class_name => 'SectorUser'
  has_many :users, through: :sector_users
end
