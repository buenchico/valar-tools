class House < ApplicationRecord
  validates :hid, numericality: { only_integer: true }
end
