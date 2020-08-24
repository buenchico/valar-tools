class Family < ApplicationRecord
  has_many :location

  def family_title
    if self.branch == 'Elder' || self.branch == 'Location'
      self.name
    else
      self.name + ' (' + self.branch + ')'
    end
  end
end
