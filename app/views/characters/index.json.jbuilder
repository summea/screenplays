json.array!(@characters) do |character|
  json.extract! character, :name, :alias, :gender
  json.url character_url(character, format: :json)
end
