class Passenger < ApplicationRecord
  belongs_to :flight, through: :bookings
  belongs_to :booking
end
