	class Ressourcen < ActiveRecord::Base
	attr_accessible :id, :ressourcename, :ressourcefunktion, :ressourcebeschreibung, :ressourceart, :ressourcekuerzel, :ressourcegenerisch, :ressourcemax
belongs_to :verantwortlichkeiten
	  validates :ressourcename,:ressourceart,:ressourcemax, presence: true
end
