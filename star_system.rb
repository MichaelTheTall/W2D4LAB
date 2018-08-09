class StarSystem
  attr_reader :name, :planets

def initialize(name, planets = [])
  @name = name
  @planets = planets
end

def planet_names
  @planets.map{|p| p.name}
end

def get_planet_by_name(name)
  @planets.find{|p| p.name == name}
end

def get_largest_planet
  big = @planets.map {|p| p.diameter}
  @planets.find{|p| p.diameter == big.max}
end

def get_smallest_planet
  smol = @planets.map {|p| p.diameter}
  @planets.find{|p| p.diameter == smol.min}
end

def get_planets_with_no_moons
  @planets.find_all{|p| p.number_of_moons == 0}
end

def get_planets_with_more_moons(num)
  arr = @planets.find_all{|p| p.number_of_moons > num}
  return arr.map{|p| p.name}
end

def get_number_of_planets_closer_than(num)
  arr = @planets.find_all{|p| p.distance_from_sun < num}
  return arr.count
end

end
