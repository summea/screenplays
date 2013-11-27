json.array!(@acts) do |act|
  json.extract! act, :name
  json.url act_url(act, format: :json)
end
