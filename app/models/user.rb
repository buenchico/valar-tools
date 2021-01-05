class User < ApplicationRecord
  has_many :systems
  has_many :sector_users, :class_name => 'SectorUser'
  has_many :sectors, through: :sector_users
  has_one :resource, dependent: :destroy
  belongs_to :house
  validates_uniqueness_of :player
  before_create :generate_token, :generate_resource
  accepts_nested_attributes_for :resource

  def generate_token
    begin
      self[:auth_token] = SecureRandom.urlsafe_base64
    end while User.exists?(:auth_token => self[:auth_token])
  end

  def generate_resource
    build_resource
  end

  def rep_mod
    if self.reputation.to_i >= 0
      '+' + ( ( -1 + Math.sqrt( 1 + ( self.reputation.to_f * 2 * 4 ) ) ) / 2 ).ceil.to_s
    else
      '−' + ( ( -1 + Math.sqrt( 1 + ( self.reputation.abs().to_f * 2 * 4 ) ) ) / 2 ).ceil.to_s
    end

  end

  # this method return true or false
  def is_admin?
    self.house.name == 'Admin'
  end

  def is_master?
    self.house.name == 'Master' || self.house.name == 'Admin'
  end
end
