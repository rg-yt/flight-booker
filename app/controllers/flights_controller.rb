class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |airport| [ airport.code, airport.id ] }
    @passenger_options = (1..4)
    @dates = Flight.pluck(:datetime).sort.uniq
    @date_options = @dates.map { |datetime| [ datetime.strftime("%B %d %Y"), datetime ] }.uniq
  end
end
