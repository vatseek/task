class Friend
  def greeting(name = '')

    if name.length > 0 then
      name = ', ' + name
    end

    return 'Hello' + name + '!'
  end
end