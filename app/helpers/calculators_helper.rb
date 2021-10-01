module CalculatorsHelper
  def payment(property_price, down_payment, interest_rate, number_of_years)
    months_in_a_year = 12
    monthly_int = (interest_rate.to_f / 100) / months_in_a_year
    principal_amount = property_price - down_payment
    n = number_of_years * months_in_a_year
    first = principal_amount * monthly_int * ((1 + monthly_int)**n)
    second = ((1 + monthly_int)**n) - 1
    first / second
  end

  def total_loan(monthly_pay, number_of_years)
    return 'invalid numbers' unless monthly_pay

    monthly_pay * (number_of_years * 12)
  end
end
