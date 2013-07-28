class Array
  def sum
    result = 0;

    for i in 0..(self.length)-1 do
      result += self[i].to_i
    end

    return result
  end

  def square
    result = []
    for i in 0..(self.length)-1 do
      result[i] = self[i].to_i**2
    end

    return result
  end

  def square!
    for i in 0..(self.length)-1 do
      self[i] = self[i].to_i**2
    end

    return self
  end
end