json.array!(@texts) do |text|
  json.extract! text, :id, :user_id, :body
  json.url text_url(text, format: :json)
end
