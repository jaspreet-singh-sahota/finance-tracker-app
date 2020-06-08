class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :ticker_symbol
      t.decimal :last_price

      t.timestamps
    end
  end
end
