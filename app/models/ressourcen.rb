	class Ressourcen < ActiveRecord::Base
	attr_accessible :id, :ressourcename, :ressourcefunktion, :ressourcebeschreibung, :ressourceart, :ressourcekuerzel, :ressourcegenerisch, :ressourcemax, :gruppen_id, :kosten
belongs_to :verantwortlichkeiten
end
