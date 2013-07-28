class Dictionary

  attr_accessor :storage

  def initialize
    @storage = Hash.new
  end

  def add(value)
    if value.instance_of? Hash
      value.keys.each do | item |
        @storage[item] = value[item]
      end
    else
      @storage[value] = nil
    end
  end

  def entries
    @storage
  end

  def include?(keyName)
    return @storage.key?(keyName)
  end

  def find(keyName)
    existing = {}
    @storage.keys.each do | key |
      if key.match(/^#{keyName}/)
        existing[key] = @storage[key]
      end
    end

    return existing
  end

  def keywords
    @storage.keys.sort
  end

  def printable
    string = ''
    @storage.keys.sort.each do | key |
      string.concat("[#{key}] \"#{@storage[key]}\"\n")
    end

    string.gsub!(/\n$/, '')

    return string
  end
end