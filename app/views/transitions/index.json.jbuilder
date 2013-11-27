json.array!(@transitions) do |transition|
  json.extract! transition, 
  json.url transition_url(transition, format: :json)
end
