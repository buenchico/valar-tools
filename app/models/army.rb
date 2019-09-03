class Army < ApplicationRecord
    def army_title
        self.name + ' de los ' + self.lord + ' (' + self.location + ') '
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
end