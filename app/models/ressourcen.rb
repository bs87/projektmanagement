	class Ressourcen < ActiveRecord::Base
	attr_accessible :id, :ressourcename, :ressourcefunktion, :ressourcebeschreibung, :ressourceart, :ressourcekuerzel, :ressourcegenerisch, :ressourcemax
belongs_to :verantwortlichkeiten
end
