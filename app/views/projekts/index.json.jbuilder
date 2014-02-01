json.array!(@projekts) do |projekt|
  json.extract! projekt, :id, :projektname, :projektleiter, :projektstart, :projektende, :projektbeschreibung, :roadstops_roadstopsid, :aufgaben_aufgabenid
  json.url projekt_url(projekt, format: :json)
end
