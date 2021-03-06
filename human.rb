class Human
    attr_accessor :strength, :intelligence, :stealth, :health
    
    def initialize
        @strength = 3
        @intelligence = 3
        @strength = 3
        @health = 100
    end

    def attack(obj)
        # check if the attacked object's class is Human or inherits from the Human class
        if obj.class.ancestors.include?(Human)
            obj.health -= 10
            true
        else
            false
        end
    end
end


human = Human.new