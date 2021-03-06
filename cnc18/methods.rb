def expand(array)
  result = []
  array.each do |item|
    item[1].times do
      result << item[0]
    end
  end
  result
end

song = [["row", 3], ["your", 1], ["boat", 1]]
puts "song = " + song.to_s
puts expand(song).to_s

def is_narcissistic(num)
  digits = num.to_s.split('').map { |d| d.to_i }
  # puts digits
  num_digits = digits.length
  dsum = 0
  digits.each { |d| dsum += d**num_digits }
  # puts dsum
  dsum == num
end

puts
2000.times do |num|
  puts num if is_narcissistic(num)
end

def gigasecond(year: year, month: month, day: day)
  time = Time.mktime(year, month, day)
  time += 1_000_000_000
  {year: time.year, month: time.month, day: time.day}
end

puts
puts "gigasecond(year: 2017, month: 4, day: 18) = "
puts gigasecond(year: 2017, month: 4, day: 18)
