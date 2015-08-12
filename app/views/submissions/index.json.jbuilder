json.array!(@submissions) do |submission|
  json.extract! submission, :id, :title, :entry, :html, :css
  json.url submission_url(submission, format: :json)
end
