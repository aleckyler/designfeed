json.array!(@responses) do |response|
  json.extract! response, :id, :comment, :html, :css
  json.url response_url(response, format: :json)
end
