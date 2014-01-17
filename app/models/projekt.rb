class Projekt < ActiveRecord::Base
	attr_accessible :id, :projektname, :projektleiter, :projektstart, :projektende, :projektbeschreibung
end
