%w[ ATL DFW DEN ORD LAX JFK CLT LAS MCO MIA PHX SEA SFO EWR IAH BOS MSP FLL LGA DTW PHL SLC BWI IAD SAN DCA TPA BNA AUS HNL ].each do |code|
  Airport.find_or_create_by(code: code)
end
30.times do |num|
  random1 = Random.rand(1..30)
  random2 = Random.rand(1..30)
  until random1 != random2
    random2 = Random.rand(1..30)
  end
  Flight.create(departure_airport_id: random1, arrival_airport_id: random2, datetime: (Time.now + Random.rand(100).days))
end
