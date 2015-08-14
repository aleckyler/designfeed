json.array!(@responses) do |response|
  json.extract! response, :id, :comment, :user_id, :submission_id, :html, :css
  json.url response_url(response, format: :json)
end
