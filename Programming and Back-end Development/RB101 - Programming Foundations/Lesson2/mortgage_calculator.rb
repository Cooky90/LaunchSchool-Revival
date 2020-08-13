def prompt(message)
  Kernel.puts("=> #{message}")
end

def convert_to_num_attempt(string)
  if string == string.to_f.to_s
    string.to_f
  elsif string == string.to_i.to_s
    string.to_i
  else
    string
  end
end

def valid_number?(num)
  (num.is_a?(Integer) && num > 0) || (num.is_a?(Float) && num > 0)
end

def convert_apr_into_decimal(num)
  num >= 1 ? num.to_f / 100 : num
end

loop do
  prompt("Welcome to the Loan Calculator.")

  loan_amount = ''
  loop do
    prompt("Please enter the loan amount:")
    loan_amount = convert_to_num_attempt(Kernel.gets().chomp())
    prompt("Loan amount: £#{loan_amount}")
    if valid_number?(loan_amount)
      break
    else
      prompt("Please enter a valid number.")
    end
  end

  apr_rate = ''
  loop do
    prompt("Please enter the APR rate(%):")
    apr_rate = convert_to_num_attempt(Kernel.gets().chomp())
    prompt("APR rate(%): #{apr_rate}")
    if valid_number?(apr_rate)
      apr_rate = convert_apr_into_decimal(apr_rate)
      break
    else
      prompt("Please enter a valid number.")
    end
  end

  payment_duration = ''
  loop do
    prompt("Please enter the loan payback duration(months):")
    payment_duration = convert_to_num_attempt(Kernel.gets().chomp())
    prompt("Payment duration(months): #{payment_duration}")
    if valid_number?(payment_duration)
      break
    else
      prompt("Please enter a valid number.")
    end
  end

  monthly_apr = (apr_rate.to_f / 12)
  monthly_payments = loan_amount * (monthly_apr / (1 - (1 + monthly_apr)**(-payment_duration)))
  monthly_payments_rounded = format('%.2f', monthly_payments)
  prompt("Monthly payment: £#{monthly_payments_rounded}")

  prompt("Would you like to perform another calculation? (Press Y to repeat)")
  answer = Kernel.gets().chomp().downcase()

  break unless answer == 'y'
end
