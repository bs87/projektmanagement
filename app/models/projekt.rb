class Projekt < ActiveRecord::Base
	attr_accessible :projektname, :projektleiter, :projektstart, :projektende, :projektbeschreibung
end
