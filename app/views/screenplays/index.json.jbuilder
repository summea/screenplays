json.array!(@screenplays) do |screenplay|
  json.extract! screenplay, :name
  json.url screenplay_url(screenplay, format: :json)
end
