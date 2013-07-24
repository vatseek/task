require "time"

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    return Time.at(@seconds).utc().strftime "%H:%M:%S"
  end

  def padded(sec = 0)
    if sec < 10
      return '0' + sec.to_s
    end

    return sec.to_s
  end

end