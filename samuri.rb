require_relative 'human'

class Samuri < Human 
    @@samuris = 0
    def initialize
        super
        @health = 200
        @@samuris += 1
    end

    def death_blow(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 0
            true
        else
            false
        end
    end

    def meditate 
        @health = 200
    end

    def how_many
        puts @@samuris
    end
end

samuri = Samuri.new

