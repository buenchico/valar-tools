class Army < ApplicationRecord
    serialize :visibility, Array
    
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
        CSV.foreach(file.path, headers: true, converters: [-> field, info { 'visibility' == info.header ? field.split(",") : field.nil? ? blank : field }]) do |row|
            army = find_by("aid = ?", row["aid"]) || new
            army.attributes = row.to_hash
            army.save!
        end
    end
end