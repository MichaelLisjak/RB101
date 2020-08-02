# Simple Calculator Program
#require "pry"
require "yaml"
MESSAGES = YAML.load_file('calculator_messages.yml')

def promt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number.to_i() != 0
end

def operation_to_message(op)
 word = case op
        when '1'
          'Adding'
        when '2'
          'Substracting'
        when '3'
          'Multiplying'
        when '4'
          'Dividing'
        end
  word
end

first_number = nil
second_number = nil
promt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    promt(MESSAGES['valid_name'])
  else
    break
  end
end

promt("hi #{name}")
loop do
  loop do
    promt(MESSAGES['first_number'])
    first_number = Kernel.gets.chomp
    if valid_number?(first_number)
      break
    else
      promt(MESSAGES['no_valid_number'])
    end
  end

  loop do
    promt(MESSAGES['second_number'])
    second_number = Kernel.gets.chomp
    if valid_number?(second_number)
      break
    else
      promt(MESSAGES['no_valid_number'])
    end
  end
  operation_promt = <<-MSG
    What type of operation do you want to perform on these numbers?
      1. add
      2. substract
      3. multiply
      4. divide
  MSG
  promt(operation_promt)
  operation = ''
  loop do
    operation = Kernel.gets.chomp
    if %w(1 2 3 4).include?(operation)
      break
    else
      promt(MESSAGES['wrong_operation_choice'])
    end
  end

  promt("#{operation_to_message(operation)} the two numbers...")

  result =  case operation
            when '1'
              first_number.to_i() + second_number.to_i()
            when '2'
              first_number.to_i() - second_number.to_i()
            when '3'
              first_number.to_i() * second_number.to_i()
            when '4'
              first_number.to_f() / second_number.to_f()
            end

  promt("the result is #{result}")

  promt(MESSAGES['another_calculation?'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
