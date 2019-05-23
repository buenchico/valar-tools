class User < ApplicationRecord
  has_secure_password
  validates :password, length: { minimum: 6, maximum: 20 }, allow_blank: true
  validates :player, presence: true, :uniqueness => { case_sensitive: false }, format: { without: /\s/}
  validates :house, presence: true
  before_create { generate_token(:auth_token) }

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  
  # this method return true or false
  def is_admin?
    self.house == 'Admin'
  end
  def is_master?
    self.house == 'Master' || self.house == 'Admin'
  end
end