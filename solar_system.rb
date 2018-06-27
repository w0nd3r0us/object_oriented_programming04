#!/bin/env ruby
class System
    def initialize
        @body_list =[]
    end
    def add(body)
        @body_list << body
    end
    def total_mass(mass)
        @@bodies << mass
        return @bodies
    end
end
class Body
    def initialize(name, mass)
        @name = name
        @mass = mass
    end
end
class Planet < Body

    def initialize(hours, days, name, mass)
        super(name, mass)
        @day = hours #hours it takes for the planet to rotate all the way around once.
        @year = days #number of days it takes for the planet to orbit the sun once.
    end
end
class Star < Body
    def initialize(type, name, mass)
        super(name, mass)
        @type = type #(ie. our Sun is a G-type star)
    end
end
class Moon < Body
    def initialize(days, planet, name, mass)
        super(name, mass)
        @month = days #number of days it takes for the moon to orbit its planet.
        @planet = planet # planets that they orbit. as an object
    end
end
p solar_system = System.new
p sun = Star.new("G-type","Sun", 999999)
p solar_system.add(sun)
p earth = Planet.new(24, 365, "earth", 55555)
p solar_system.add(earth)
p mars =  Planet.new(24, 687,"mars", 44444)
p solar_system.add(mars)
p moon = Moon.new(27, "earth","moon",10 )
p solar_system.add(moon)
