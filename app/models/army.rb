class Army < ApplicationRecord
    # Serialize is necessary in development*sqlite3 but make array not working in production/pg
    if ENV['RAILS_ENV'] != "production" then
        serialize :visibility, Array
    end
    
    before_create do
        self.aid = [100001, self.class.maximum(:aid).to_i + 1].max if self.aid.nil?
    end
    
    def army_title
        if self.name.nil?
            @name = ''
        else
            @name = self.name
        end
        if self.lord.nil?
            @lord = ''
        else
            @lord = self.lord
        end
        if self.location.nil?
           @location = ''
        else
            @location = self.location
        end
        @name + ' de los ' + @lord + ' (' + @location + ')'
    end

    def number_to_trait(value)
        if value.nil?
            '+0'
        elsif value >= 0
            '+' + value.to_s
        else
            '–' + value.abs.to_s
        end
    end 
    
    def army_traits
        [if self.num.nil? || self.num == 0
            nil
        else
            'Numeroso ' + number_to_trait(self.num)
        end,
        if self.vet.nil? || self.vet == 0
            nil
        elsif self.vet > 0
            'Veterano ' + number_to_trait(self.vet)
        elsif self.vet < 0
            'Bisoño ' + number_to_trait(self.vet)
        end,
        if self.armour.nil? || self.armour == 0
            nil
        elsif self.armour > 0
            'Pesado ' + number_to_trait(self.armour)
        elsif self.armour < 0
            'Ligero ' + number_to_trait(self.armour)
        end,
        if self.morale.nil? || self.morale == 0
            nil
        else
            'Moral ' + number_to_trait(self.morale)
        end,
        self.infantry == true ? 'Infantería' : nil,
        self.cavalry == true ? 'Caballería' : nil,
        self.marine == true ? 'Marino' : nil
        ].compact.join(', ')
    end
    
    def army_str
        if self.boat == "No"
            ( ( 10 + (self.vet.to_i * 2 ) + (self.armour.to_i * 1 ) + (self.morale.to_i * 1 ) + ( self.infantry? == true ? -2 : 0 ) + ( self.cavalry? == true ? 2 : 0 ) ) * ( 10 + ( self.num.to_i * 2 ) ) / 10 ) * ( self.status == 'Aniquilado' ? 0 : 1 )
        else
            ( ( 10 + (self.vet.to_i * 2 ) + (self.armour.to_i * 1 ) + (self.morale.to_i * 1 ) + ( self.cavalry? == true ? -2 : 0 ) + ( self.marine? == true ? 4 : 0 ) ) * ( 10 + ( self.num.to_i * 2 ) ) / 10 ) * ( self.status == 'Aniquilado' ? 0 : 1 )
        end
    end
    
    def self.to_csv
        wanted_columns = [:aid, :visibility, :visible, :kingdom, :location, :lord, :name, :position, :mission, :status, :armytype, :num, :vet, :armour, :morale, :infantry, :cavalry, :marine, :boat, :flagship, :notes]
        CSV.generate do |csv|
            csv << wanted_columns
            all.each do |army|
                csv << army.attributes.with_indifferent_access.values_at(*wanted_columns)
            end
        end
    end

    def self.import(file)
        CSV.foreach(file.path, headers: true, converters: [-> field, info { 'visibility' == info.header ? field.split(",") : field.nil? ? nil : field }]) do |row|
            army = find_by("aid = ?", row["aid"]) || new
            army.attributes = row.to_hash
            army.save!
        end
    end
end