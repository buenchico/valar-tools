class Tech < ApplicationRecord
  belongs_to :house
  validates :lvl, :numericality => { :greater_than => 0 }
  validates :name, presence: true
  validates_uniqueness_of :name, :scope => [:house]
  validates_uniqueness_of :lvl, :scope => [:tech_type,:house], :unless => Proc.new { |obj| obj.tech_type == 'misc' }

  # $tech_types is defined in config/initializards/variables
  validates_inclusion_of :tech_type, :in => $tech_types.collect {|k,v| k.to_s}

  attribute :obsolete, :boolean

  def obsolete
    self.lvl == Tech.where(house: self.house).where(tech_type: self.tech_type).maximum('lvl') ? false : true
  end
end
