class CalculatorsController < ApplicationController
  before_action :set_calculator, only: %i[show edit update destroy]

  def index
    if params[:calculate]
      property_price = params[:calculate][:property_price].to_f
      down_payment = params[:calculate][:down_payment].to_f
      interest_rate = params[:calculate][:interest_rate].to_f
      number_of_years = params[:calculate][:number_of_years].to_f
      @monthly_payment = helpers.payment(property_price, down_payment, interest_rate, number_of_years)
    else
      @calculator = Calculator.all
    end
  end
end
