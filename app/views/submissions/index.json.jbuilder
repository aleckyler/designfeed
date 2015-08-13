json.array!(@submissions) do |submission|
  json.extract! submission, :id, :title, :entry, :html, :css, :user_id
  json.url submission_url(submission, format: :json)
end
