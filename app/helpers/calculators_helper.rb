module CalculatorsHelper
  def payment(property_price, down_payment, interest_rate, number_of_years)
    interest = percent_of(interest_rate)
    principal_amount = property_price - down_payment
    years = number_of_years * 12
    result = (principal_amount * interest) / (1 - (1 + interest)**-years)
    result || 'please input the correct values only in numbers'
  end

  def total_loan(monthly_pay, number_of_years)
    return 'invalid numbers' unless monthly_pay

    monthly_pay * (number_of_years * 12)
  end

  def percent_of(num)
    (num.to_f / 100) / 12
  end
end
