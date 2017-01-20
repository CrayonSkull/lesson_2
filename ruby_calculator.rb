puts "Welcome to Ruby Calculator!"

puts "What is the first number?"
number_1 = gets.chomp

puts "What is the second number?"
number_2 = gets.chomp

puts "What is the operation? 1)add 2)subtract 3)multiply 4)divide"
operation = gets.chomp

if 
  operation == '1'
  result = number_1.to_i + number_2.to_i 

elsif operation == '2'
  result = number_1.to_i - number_2.to_i   

elsif operation == '3'
  result = number_1.to_i * number_2.to_i

else operation == '4'
  result = number_1.to_f / number_2.to_f
end

puts "the answer is #{result}"
