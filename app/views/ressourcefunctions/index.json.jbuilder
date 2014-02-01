json.array!(@ressourcefunctions) do |ressourcefunction|
  json.extract! ressourcefunction, :id, :name
  json.url ressourcefunction_url(ressourcefunction, format: :json)
end
