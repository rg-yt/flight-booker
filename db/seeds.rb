%w[ ATL DFW DEN ORD LAX JFK CLTl LAS MCO MIA PHX SEA SFO EWR IAH BOS MSP FLL LGA DTW PHL SLC BWI IAD SAN DCA TPA BNA AUS HNL ].each do |code|
  Airport.find_or_create_by(code: code)
end
