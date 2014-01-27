json.array!(@tests) do |test|
  json.extract! test, :id, :datum
  json.url test_url(test, format: :json)
end
