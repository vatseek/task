class RPNCalculator
  def initialize
    @stack = []
  end

  def push(value)
    @stack.push(value)
  end

  def plus
    is_empty

    value1 = @stack.pop
    value2 = @stack.pop
    @stack.push(value1 + value2)
  end

  def value
    @stack.last
  end

  def minus
    is_empty

    value1 = @stack.pop
    value2 = @stack.pop
    @stack.push(value1 - value2)
  end

  def divide
    is_empty

    value1 = @stack.pop
    value2 = @stack.pop
    @stack.push(value1 / (value2 * 1.0))
  end

  def times
    is_empty

    value1 = @stack.pop
    value2 = @stack.pop
    @stack.push(value1 * value2)
  end

  def is_empty
    #print @stack

    if @stack.length == 0
      raise "calculator is empty"
    end

    return false
  end

  def tokens(string)
    list = []

    string.split.each do | item |
      if item.match(/[+-\/*]+/)
        list << item.to_sym
      else
        list << item.to_f
      end
    end

    return list
  end

  def evaluate (string)
    result = tokens(string)
    result.each do | item |
      case item
        when :+
          plus
        when :-
          minus
        when :/
          divide
        when :*
          times
        else
          push item
      end
    end

    return value()
  end
end