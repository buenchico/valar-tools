namespace :ap do
  desc "Accumulate rdaily resources"
  task resources: :environment do
    Resource.where(user: User.where.not(house: 'Inactivo').where.not(house: 'Admin').where.not(house: 'Master')).each do |resource|
      resource.ic += resource.ic_prod
      resource.rp += resource.rp_prod
      resource.cp += resource.cp_prod
      resource.save
    end
  end

end
