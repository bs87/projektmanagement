json.array!(@ressourcens) do |ressourcen|
  json.extract! ressourcen, :id, :Ressourcename, :Ressourcebeschreibung, :Ressourceart, :Ressourcekuerzel, :Ressourcegenerisch, :Ressourcemax, :gruppen_id, :kosten
  json.url ressourcen_url(ressourcen, format: :json)
end
