# CarLoanCalculator

require "yaml"
MESSAGES = YAML.load_file('car_loan_calculator_messages.yml')

# Variable declaration
loan_amount = ''
annual_percentage_rate = 'nil'
loan_duration_years = 'nil'

# Method definitions
def promt(message)
  puts "=> #{message}"
end

def valid_input?(number)
  (number.to_i.to_s == number || number.to_f.to_s == number) && number.to_f != 0
end

# Program logic
promt(MESSAGES['welcome'])

promt(MESSAGES['loan_amount'])
loop do
  loan_amount = gets.chomp
  if valid_input?(loan_amount)
    break
  else
    promt(MESSAGES['invalid_input'])
  end
end

promt(MESSAGES['apr'])
loop do
  annual_percentage_rate = gets.chomp
  if valid_input?(annual_percentage_rate)
    break
  else
    promt(MESSAGES['invalid_input'])
  end
end

promt(MESSAGES['loan_duration'])
loop do
  loan_duration_years = gets.chomp
  if valid_input?(loan_duration_years)
    break
  else
    promt(MESSAGES['invalid_input'])
  end
end

monthly_interest_rate = annual_percentage_rate.to_f / 1200.0
loan_duration_months = 12.0 * loan_duration_years.to_f

monthly_payment = loan_amount.to_f * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))
promt(MESSAGES['monthly_payment'] + monthly_payment.round(2).to_s + " Dollar")
