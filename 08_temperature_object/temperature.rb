class Temperature
  def initialize(arg)
    if arg[:c] != nil
      @Temp = arg[:c]
    elsif arg[:f] != nil
      @Temp = ftoc(arg[:f])
    else
      @Temp = 0
    end
  end

  def ctof(temperature)
    ((temperature * 9.0)/5.0) + 32
  end

  def ftoc(temperature)
    ((temperature - 32) * 5) / 9
  end

  def in_fahrenheit
    return ctof(@Temp)
  end

  def in_celsius
    return @Temp
  end

  def self.from_fahrenheit(temperature = 0)
    new :f => temperature
  end

  def self.from_celsius(temperature = 0)
    new :c => temperature
  end
end

class Celsius < Temperature
  def initialize(temperature)
    @Temp = temperature
  end
end

class Fahrenheit < Temperature
  def initialize(temperature)
    @Temp = ftoc(temperature)
  end
end


#print Temperature.from_celsius(50).in_celsius
#print Temperature.from_celsius(50).in_fahrenheit
