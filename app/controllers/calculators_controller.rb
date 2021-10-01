class CalculatorsController < ApplicationController
  # rubocop:disable Lint/RedundantCopDisableDirective
  # rubocop:disable Layout/LineLength

  before_action :set_calculator, only: %i[show edit update destroy]

  def index
    if params[:calculate]
      property_price = params[:calculate][:property_price].to_i
      down_payment = params[:calculate][:down_payment].to_i
      interest_rate = params[:calculate][:interest_rate].to_f
      number_of_years = params[:calculate][:number_of_years].to_i
      @monthly_payment = helpers.payment(property_price, down_payment, interest_rate, number_of_years)
      @full_payment = helpers.total_loan(@monthly_payment, number_of_years) if @monthly_payment.is_a? Numeric
    else
      @calculator = 'Please performe your calculation'
    end
  end
end
# rubocop:enable Layout/LineLength
# rubocop:enable Lint/RedundantCopDisableDirective
