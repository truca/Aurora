json.array!(@ideas) do |idea|
  json.extract! idea, :id, :description, :display
  json.url idea_url(idea, format: :json)
end
