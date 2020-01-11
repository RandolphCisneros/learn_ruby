class Timer

  $hoursFromSeconds = 3600
  $minutesFromSeconds = 60

  attr_accessor :seconds

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds
    @seconds
  end

  def time_string
    convertedHours = convertHours(@seconds)
    convertedMinutes = convertMinutes(@seconds)
    convertedSeconds = convertSeconds(@seconds)

    convertedHours + ":" + convertedMinutes + ":" + convertedSeconds
  end

  def convertHours numSeconds
    returnVal = ""
    value = numSeconds / $hoursFromSeconds
    if value < 10
      returnVal += "0" + value.to_s
    else
      returnVal = value.to_s
    end
    returnVal
  end

  def convertMinutes numSeconds
    returnVal = ""
    value = numSeconds / $minutesFromSeconds % 60
    if value < 60
      returnVal += "0" + value.to_s
    elsif value > 60
      value -= 60
      returnVal += value.to_s
    else
      returnVal = value.to_s
    end
    returnVal
  end

  def convertSeconds numSeconds
    returnVal = ""
    value = numSeconds % 3600 % 60
    if value < 10
      returnVal += "0" + value.to_s
    elsif value > 60
      value -= 60
      returnVal += value.to_s
    else
      returnVal = value.to_s
    end
    returnVal
  end

end
