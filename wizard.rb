require_relative 'human'
require_relative 'ninja'
require_relative 'samuri'

class Wizard < Human
    def initialize
        super
        @health = 50
        @intelligence = 25
    end

    def heal
        @health += 10
    end

    def fireball(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 20
            true
        else
            puts "Opponent Doesnt exist"
        end
    end
end

redWizard = Wizard.new
redNinja = Ninja.new
redSamuri = Samuri.new
blueWizard = Wizard.new
blueNinja = Ninja.new
blueSamuri = Samuri.new

puts blueNinja.health
blueNinja.get_away
puts blueNinja.health
