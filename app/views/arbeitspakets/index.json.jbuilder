json.array!(@arbeitspakets) do |arbeitspaket|
  json.extract! arbeitspaket, :id, :Arbeitspaketname, :Arbeitspaketbeschreibung, :Arbeitspaketverantwortlicher, :Arbeitspaketbeginn, :Arbeitspaketdauer, :Arbeitspaketende, :Arbeitspaketnummer, :Arbeitspaketziel, :Arbeitspaketeingangsdokumente, :Arbeitspaketausgangsdokumente, :AufgabenID, :Verantwortlichkeiten_ArbeitsID, :Verantwortlichkeiten_RessourceID
  json.url arbeitspaket_url(arbeitspaket, format: :json)
end
