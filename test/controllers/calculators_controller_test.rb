require "test_helper"

class CalculatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calculator = calculators(:one)
  end

  test "should get index" do
    get calculators_url
    assert_response :success
  end

  test "should get new" do
    get new_calculator_url
    assert_response :success
  end

  test "should create calculator" do
    assert_difference('Calculator.count') do
      post calculators_url, params: { calculator: { down_payment: @calculator.down_payment, interest_rate: @calculator.interest_rate, number_of_years: @calculator.number_of_years, property_price: @calculator.property_price } }
    end

    assert_redirected_to calculator_url(Calculator.last)
  end

  test "should show calculator" do
    get calculator_url(@calculator)
    assert_response :success
  end

  test "should get edit" do
    get edit_calculator_url(@calculator)
    assert_response :success
  end

  test "should update calculator" do
    patch calculator_url(@calculator), params: { calculator: { down_payment: @calculator.down_payment, interest_rate: @calculator.interest_rate, number_of_years: @calculator.number_of_years, property_price: @calculator.property_price } }
    assert_redirected_to calculator_url(@calculator)
  end

  test "should destroy calculator" do
    assert_difference('Calculator.count', -1) do
      delete calculator_url(@calculator)
    end

    assert_redirected_to calculators_url
  end
end
