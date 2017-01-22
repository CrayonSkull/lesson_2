def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_i != 0
end

def operation_to_message(op)
  case(op)
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Mulitplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Ruby Calculator!")

name = ''

loop do 
  prompt("Enter your name")
  name = gets.chomp
  if name.empty?
    prompt("Make sure you use a valid name!")
  else
    prompt("Hi #{name}!")
    break
  end
end



loop do 
  number_1 = ''

  loop do 
    prompt("What is the first number?")
    number_1 = gets.chomp

    if valid_number?(number_1)
      break
    else
      prompt("Hmm...that doesn't look like a valid number. Try again.")
    end
  end

  number_2 = ''

  loop do 
    prompt("What is the second number?")
    number_2 = gets.chomp

    if valid_number?(number_2)
      break
    else
      prompt("Hmm...that doesn't look like a valid number. Try again.")
    end
  end

  operator_prompt = <<-MSG
      What operation do you want to use?
        1)Add
        2)Subtract
        3)Multiply
        4)Divide
  MSG

  prompt(operator_prompt)
  
  operator = ''
  loop do 
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  result = case operator
            when '1'
              number_1.to_i + number_2.to_i
            when '2'
              number_1.to_i - number_2.to_i
            when '3'
              number_1.to_i * number_2.to_i
            when '4'
              number_1.to_f / number_2.to_f
  end

  prompt("...#{operation_to_message(operator)} the two numbers")
  prompt("the answer is #{result}")

  prompt("Would you like to do another calculation?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Thanks #{name} for using the Ruby Calculator!"
