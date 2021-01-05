class House < ApplicationRecord
  has_one :user
  validates :hid, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :name, presence: true, uniqueness: true, format: { without: /\s/ }
end
