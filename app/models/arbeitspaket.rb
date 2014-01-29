class Arbeitspaket < ActiveRecord::Base
	attr_accessible :id, :arbeitspaketname, :arbeitspaketbeschreibung, :arbeitspaketverantwortlicher, :arbeitspaketbeginn, :arbeitspaketdauer, :arbeitspaketende, :arbeitspaketnr, :arbeitspaketziel, :arbeitspaketkuerzel, :arbeitspaketeingangsdokumente, :arbeitspaketausgangsdokumente, :aufgabeid, :verantwortlichkeiten_Arbeitsid, :verantwortlichkeiten_Ressourceid, :arbeitspakettyp, :produkt_id
	belongs_to :aufgaben
	belongs_to :verantwortlichkeiten
	has_many :arbeitspaketvorgaenger ,:foreign_key => "apid", :dependent => :destroy 
	validates :arbeitspaketname,  :arbeitspaketdauer,  presence: true

end
