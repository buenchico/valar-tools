class House < ApplicationRecord
  before_create :generate_resource
  has_many :users
  validates :hid, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :name, presence: true, uniqueness: true, format: { without: /\s/ }

  has_many :systems
  has_many :sector_houses, :class_name => 'SectorHouse'
  has_many :sectors, through: :sector_houses

  has_one :resource, dependent: :destroy
  accepts_nested_attributes_for :resource

  def rep_mod
    if self.reputation.to_i >= 0
      '+' + ( ( -1 + Math.sqrt( 1 + ( self.reputation.to_f * 2 * 4 ) ) ) / 2 ).ceil.to_s
    else
      '−' + ( ( -1 + Math.sqrt( 1 + ( self.reputation.abs().to_f * 2 * 4 ) ) ) / 2 ).ceil.to_s
    end
  end

  def generate_resource
    build_resource
  end
end
