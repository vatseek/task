def echo(word)

  return word
end

#-------------------
def shout(word)

  return word.upcase
end

#-------------------
def repeat(word, times = 2)
  $i = 0;
  $string = ''

  while $i < times do
    $string = $string + word + ' '
    $i += 1
  end

  return $string.strip
end

#-------------------
def start_of_word(word, count)
  $i = 0
  $string = ''

  while $i < count do
    $string = $string + word[$i]
    $i += 1
  end

  return $string
end

#-------------------
def first_word(phrase)

  return phrase.split(' ').first
end

#-------------------
def titleize(phrase)
  $list = phrase.split(' ')

  $exclude = ['and', 'over', 'the']

  $counter = 0
  $string = ''
  $list.each do | word |
    if (($counter == 0) || ($exclude.grep(word).count == 0))
      $string = $string + word.capitalize + ' '
    else
      $string = $string + word + ' '
    end

    $counter += 1;
  end

  return $string.strip
end