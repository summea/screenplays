json.array!(@scene_headings) do |scene_heading|
  json.extract! scene_heading, :location, :time
  json.url scene_heading_url(scene_heading, format: :json)
end
