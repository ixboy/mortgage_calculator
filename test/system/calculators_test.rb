require "application_system_test_case"

class CalculatorsTest < ApplicationSystemTestCase
  setup do
    @calculator = calculators(:one)
  end

  test "visiting the index" do
    visit calculators_url
    assert_selector "h1", text: "Calculators"
  end

  test "creating a Calculator" do
    visit calculators_url
    click_on "New Calculator"

    fill_in "Down payment", with: @calculator.down_payment
    fill_in "Interest rate", with: @calculator.interest_rate
    fill_in "Number of years", with: @calculator.number_of_years
    fill_in "Property price", with: @calculator.property_price
    click_on "Create Calculator"

    assert_text "Calculator was successfully created"
    click_on "Back"
  end

  test "updating a Calculator" do
    visit calculators_url
    click_on "Edit", match: :first

    fill_in "Down payment", with: @calculator.down_payment
    fill_in "Interest rate", with: @calculator.interest_rate
    fill_in "Number of years", with: @calculator.number_of_years
    fill_in "Property price", with: @calculator.property_price
    click_on "Update Calculator"

    assert_text "Calculator was successfully updated"
    click_on "Back"
  end

  test "destroying a Calculator" do
    visit calculators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calculator was successfully destroyed"
  end
end
