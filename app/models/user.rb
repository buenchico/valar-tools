class User < ApplicationRecord
  has_secure_password

  validates :player, presence: true, uniqueness: true
end
