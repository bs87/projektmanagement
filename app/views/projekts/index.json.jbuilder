json.array!(@projekts) do |projekt|
  json.extract! projekt, :id, :Projektname, :Projektleiter, :Projektstart, :Projektende, :Projektbeschreibung, :Roadstops_RoadstopsID, :Aufgaben_AufgabenID
  json.url projekt_url(projekt, format: :json)
end
