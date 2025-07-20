class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def flight_label
    "#{departure_airport.code} to #{arrival_airport.code} on #{datetime.strftime("%B %d %Y at %I:%M %P")}"
  end
end
