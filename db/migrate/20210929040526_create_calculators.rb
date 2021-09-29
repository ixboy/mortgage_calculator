class CreateCalculators < ActiveRecord::Migration[6.1]
  def change
    create_table :calculators do |t|
      t.integer :number_of_years
      t.decimal :property_price
      t.decimal :down_payment
      t.decimal :interest_rate

      t.timestamps
    end
  end
end
