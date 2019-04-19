class House < ApplicationRecord
  validates :hid, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :name, presence: true, uniqueness: true
end
