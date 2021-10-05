class CalculatorsController < ApplicationController
  # rubocop:disable Lint/RedundantCopDisableDirective
  # rubocop:disable Layout/LineLength

  before_action :set_calculator, only: %i[show edit update destroy]

  def index
    if params
      property_price = params[:property_price].to_f
      down_payment = params[:down_payment].to_f
      interest_rate = params[:interest_rate].to_f
      number_of_years = params[:number_of_years].to_i
    else
      property_price = 500000
      down_payment = 100000 
      interest_rate = 5
      number_of_years = 30 
    end
    @monthly_payment = helpers.payment(property_price, down_payment, interest_rate, number_of_years)
    @full_payment = helpers.total_loan(@monthly_payment, number_of_years) if @monthly_payment.is_a? Numeric
  end
end
# rubocop:enable Layout/LineLength
# rubocop:enable Lint/RedundantCopDisableDirective
