json.array!(@arbeitspaketvorgaengers) do |arbeitspaketvorgaenger|
  json.extract! arbeitspaketvorgaenger, :id, :apid, :apvorgaengerid
  json.url arbeitspaketvorgaenger_url(arbeitspaketvorgaenger, format: :json)
end
