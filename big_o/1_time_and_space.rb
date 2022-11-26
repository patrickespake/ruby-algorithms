# Stack space in recursive calls counts as O(n) space.
# The stack space is the number of recursive calls that are on the stack at any given time.
# For example, code like this would take O(n) time and O(n) space.
def sum(n)
  puts "sum(#{n})"

  return 0 if n <= 0

  n + sum(n-1)
end

# Type the n value on console
puts "Type the n value: "
n = gets.chomp.to_i
puts "Result: #{sum(n)}"