class User < ApplicationRecord
  has_many :system
  validates :house, presence: true
  before_create { generate_token(:auth_token) }

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
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
    self.house == 'Admin'
  end

  def is_master?
    self.house == 'Master' || self.house == 'Admin'
  end
end
