module CalculatorsHelper
  def payment(property_price, down_payment, interest_rate, number_of_years)
    months_in_a_year = 12
    n = number_of_years * months_in_a_year
    principal_amount = property_price - down_payment
    monthly_int = (principal_amount * (interest_rate.to_f / 100)) / months_in_a_year
    result = (principal_amount / n) + monthly_int
    result || 0
  end

  def total_loan(monthly_pay, number_of_years)
    return 0 unless monthly_pay

    monthly_pay * (number_of_years * 12)
  end
end
