json.array!(@novels) do |novel|
  json.extract! novel, title:, author_id:, year:, cover:, plot:
  json.url novel_url(novel, format: :json)
end
