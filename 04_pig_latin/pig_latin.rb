def translate(phrase)
  list = phrase.split(' ')

  #get first char
  newPhrase = ''
  list.each do | sItem |
    first = ''
    last = ''

    match = sItem.match(/^[^A-Za-z]/)
    if (match != nil)
      first = match[0]
      sItem = sItem.gsub(/^[#{first}]?/, '')
    end

    match = sItem.match(/[^A-Za-z]$/)

    if (match != nil)
      last = match[0]
      sItem = sItem.gsub(/[#{last}]?$/, '')
    end

    word = processed(sItem)

    match = word.match(/[A-Z]/)
    if (match != nil)
      word = word.downcase
      word = word.capitalize
    end

    newPhrase = newPhrase + first + word + 'ay' + last + ' '
  end

  return newPhrase.strip
end

def processed(word)
  match = word.match(/^[Qq]{1}u/)
  if (match != nil)
    word = word[2, word.length] + match[0]
    word = processed(word)
  end

  match = word.match(/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{1}/)
  if (match != nil)
    word = word[1, word.length] + match[0]
    word = processed(word)
  end

  return word
end

##print translate('Quick, Brown fox')