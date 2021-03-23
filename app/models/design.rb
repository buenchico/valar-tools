class Design < ApplicationRecord
  belongs_to :house

  validates :name, presence: true
  validates :size, :inclusion => {:in => 1..50}

  def ship_type
    'TEST'
  end
end
