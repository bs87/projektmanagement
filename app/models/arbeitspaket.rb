class Arbeitspaket < ActiveRecord::Base
	attr_accessible :arbeitspaketname, :arbeitspaketbeschreibung, :arbeitspaketverantwortlicher, :arbeitspaketbeginn, :arbeitspaketdauer, :arbeitspaketende, :arbeitspaketnr, :arbeitspaketziel, :arbeitspaketkuerzel, :arbeitspaketeingangsdokumente, :arbeitspaketausgangsdokumente, :aufgabeid, :verantwortlichkeiten_Arbeitsid, :verantwortlichkeiten_Ressourceid
end
