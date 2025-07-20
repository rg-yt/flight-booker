class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |airport| [ airport.code, airport.id ] }
    @passenger_options = (1..4)
    @dates = Flight.pluck(:datetime).sort.uniq
    @date_options = @dates.map { |datetime| [ datetime.strftime("%B %d %Y"), datetime ] }.uniq

    if params
      @flights = Flight.where(departure_airport_id: params[:outbound_airport], arrival_airport_id: params[:destination_airport])
    end
  end
end
