json.array!(@verantwortlichkeitens) do |verantwortlichkeiten|
  json.extract! verantwortlichkeiten, :id, :arbeitspaketid, :ressourceid, :intensitaet, :beschreibung, :ressourcen_ressourcenid
  json.url verantwortlichkeiten_url(verantwortlichkeiten, format: :json)
end
