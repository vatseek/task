class Numeric
  def initialize(number)
    @number = number

    @data = {
      0 => 'zero',
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen',
      20 => 'twenty',
      30 => 'thirty',
      40 => 'forty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety'
    }


    @type = {
      0 => '',
      1 => 'thousand',
      2 => 'million',
      3 => 'billion',
      4 => 'trillion'
    }
  end

  def translate
    result = ''
    if @number < 20
      return @data[@number]
    end

    string = @number.to_s.reverse

    for i in 0..((string.to_s.length / 3.0).ceil)-1 do
      rawNumber = string.to_s[i*3, 3].to_s.reverse

      if rawNumber.length == 2
        rawNumber = '0' + rawNumber
      elsif rawNumber.length == 1
        rawNumber = '00' + rawNumber
      end

      tmp = toString(rawNumber).to_s

      if tmp.length > 0
        tmp << ' ' + @type[i].to_s + ' '
      end

      result = tmp + result
    end

    return result.strip
  end

  def toString(value)
    result = ''

    if value[0].to_i > 0
      result << @data[value[0].to_i] + ' hundred '
    end

    if value[1].to_i == 1
      result << @data[(value[1].to_i*10) + value[2].to_i].to_s

      return result
    elsif value[1].to_i > 0
      result << @data[(value[1].to_i*10)].to_s + ' '
    end

    if value[2].to_i > 0
      result << @data[value[2].to_i].to_s
    end

    return result.strip
  end

end

class Fixnum
  def in_words
    val = Numeric.new(self)

    return val.translate()
  end
end


class Bignum
  def in_words
    val = Numeric.new(self)

    return val.translate()
  end
end