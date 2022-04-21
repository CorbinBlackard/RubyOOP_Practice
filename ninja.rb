require_relative 'human'

class Ninja < Human

    def initialize
        super
        @stealth = 175
    end

    def steal(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 10
            @health += 10
        else
            puts "Opponent Doesnt exist"
        end
    end

    def get_away
        @health -= 15
    end
end

def start
    blue_ninja = Ninja.new
end
