json.array!(@dialogues) do |dialogue|
  json.extract! dialogue, :body
  json.url dialogue_url(dialogue, format: :json)
end
