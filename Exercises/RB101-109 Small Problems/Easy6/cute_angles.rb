DEGREE = "\xC2\xB0"

def dms(angle)

  degrees, d_remainder = angle.divmod(1)
  minutes, m_remainder = (d_remainder * 60).divmod(1)
  seconds = (m_remainder * 60)

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")