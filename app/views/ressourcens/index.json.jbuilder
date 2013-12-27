json.array!(@ressourcens) do |ressourcen|
  json.extract! ressourcen, :id, :Ressourcename, :Ressourcebeschreibung, :Ressourceart, :Ressourcekuerzel, :Ressourcegenerisch, :Ressourcemax
  json.url ressourcen_url(ressourcen, format: :json)
end
