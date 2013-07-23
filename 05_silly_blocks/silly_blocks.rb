def reverser
  result = ''
  list = yield.split(' ')

  list.each do | word |
    result = result + reverse(word) + ' '
  end

  result.strip
end

# additional function (reverse string)
def reverse(str)
  reverse = ''

  str.length.times do |i|
    reverse.insert(i, str[-1-i].chr)
  end

  return reverse
end


def adder(item = 1)
  return item + yield
end

def repeater(n = 1, &block)
  print n.times
  n.times &block
end
