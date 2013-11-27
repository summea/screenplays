json.array!(@action_blocks) do |action_block|
  json.extract! action_block, :scene_description
  json.url action_block_url(action_block, format: :json)
end
