$level = 0
class XmlDocument
  def initialize(is_newline = false)
    if (is_newline)
      $level = 0
      @newLine = "\n"
    end
  end

  def method_missing(tag, *args, &block)
      string, tmp , tmp2 = '', '', ''

      if (args.length > 0)
        args[0].each do | key, value |
          string << " #{key}='#{value}'"
        end
      elsif block_given?

        if @newLine != nil
          $level += 1
          for i in 1..$level
            tmp << '  '
          end
          for i in 2..$level
            tmp2 << '  '
          end
        end

        str =  "<#{tag}>#{@newLine}#{tmp}"
        str << block.call + tmp2
        str << "</#{tag}>#{@newLine}"

        return str
      end

      return "<#{tag}#{string}/>#{@newLine}"
  end
end