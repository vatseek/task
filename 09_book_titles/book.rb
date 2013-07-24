class Book
  attr_accessor :title

  def initialize
    @title = ''
  end

  def title
    list = @title.split(' ')

    exclude = ['and', 'over', 'the', 'a', 'an', 'of', 'in']

    counter = 0
    string = ''
    list.each do | word |
      if ((counter == 0) || (exclude.grep(word).count == 0))
        string = string + word.capitalize + ' '
      else
        string = string + word + ' '
      end

      counter += 1;
    end

    return string.strip
  end

end