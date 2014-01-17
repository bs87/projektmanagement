class Verantwortlichkeiten < ActiveRecord::Base
	attr_accessible :id, :arbeitspaketid, :ressourceid, :intensitaet, :beschreibung, :created_at, :updated_at
end
