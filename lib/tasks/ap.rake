namespace :ap do
  desc "Accumulate rdaily resources"
  task resources: :environment do
    Resource.where(house: House.where.not(hid: 0)).each do |resource|
      resource.ic += resource.ic_prod
      resource.rp += resource.rp_prod
      resource.cp += resource.cp_prod
      resource.save
    end
  end

end
