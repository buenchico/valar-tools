class User < ApplicationRecord
  belongs_to :house
  validates_uniqueness_of :player
  before_create :generate_token

  def generate_token
    begin
      self[:auth_token] = SecureRandom.urlsafe_base64
    end while User.exists?(:auth_token => self[:auth_token])
  end

  # this method return true or false
  def is_admin?
    self.house.name == 'Admin'
  end

  def is_master?
    self.house.name == 'Master' || self.house.name == 'Admin'
  end
end
