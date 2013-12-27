json.array!(@verantwortlichkeitens) do |verantwortlichkeiten|
  json.extract! verantwortlichkeiten, :id, :ArbeitspaketID, :RessourceID, :Intensitaet, :Beschreibung, :Ressourcen_RessourcenID
  json.url verantwortlichkeiten_url(verantwortlichkeiten, format: :json)
end
