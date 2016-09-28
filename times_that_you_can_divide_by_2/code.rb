puts "Number:"
number = gets.chomp.to_i

count = 0
while number > 0 do
  number = number / 2
  puts number
  count += 1
end

puts ""
puts "Times that you can divide by 2: #{count}"
