def time_of_day(number)
  hours = (number / 60) % 24
  minutes = number % 60
  format("%02d:%02d", hours, minutes)
end

def after_midnight(string)
  hours, minutes = string.split(":")[0].to_i, string.split(":")[1].to_i
  total = (hours * 60) + minutes
  total = 0 if total == 1440
  total
end

def before_midnight(string)
  hours, minutes = string.split(":")[0].to_i, string.split(":")[1].to_i
  total = 1440 - ((hours * 60) + minutes)
  total = 0 if total == 1440
  total
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0