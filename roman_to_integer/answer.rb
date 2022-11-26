# @param {String} s
# @return {Integer}
def roman_to_int(s)
  value = 0
  array_s = s.split("")
  ignore_is = []

  array_s.each_with_index do |c, i|
      puts "ignore_is: #{ignore_is}"
      if !ignore_is.include?(i)
          subs = subtract_to_value("#{array_s[i]}#{array_s[i+1]}")
          puts "subs: #{subs}"
          puts "i: #{i}"

          if subs != 0
              value += subs
              ignore_is << i
              ignore_is << i+1
          else
              value += string_to_value(c)
          end
      end
  end

  value
end

def subtract_to_value(s)
  puts "subtract_to_value(#{s})"
  case s
  when "IV"
      4
  when "IX"
      9
  when "XL"
      40
  when "XC"
      90
  when "CD"
      400
  when "CM"
      900
  else
      0
  end
end

def string_to_value(c)
  puts "string_to_value(#{c})"
  case c
  when "I"
      1
  when "V"
      5
  when "X"
      10
  when "L"
      50
  when "C"
      100
  when "D"
      500
  when "M"
      1000
  else
      0
  end
end