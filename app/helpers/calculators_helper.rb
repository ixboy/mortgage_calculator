module CalculatorsHelper

  def payment(property_price, down_payment, interest_rate, number_of_years)
    interest = percent_of(interest_rate)
    principal_amount = property_price - down_payment
    years = number_of_years * 12
    (principal_amount * interest) / (1 - (1 + interest)**-years)
  end

  def percent_of(n)
    (n.to_f / 100) / 12
  end
end
