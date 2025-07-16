class CreateFlights < ActiveRecord::Migration[8.0]
  def change
    create_table :flights do |t|
      t.datetime :datetime
      t.references :arrival_airport
      t.references :departure_airport

      t.timestamps
    end
  end
end
