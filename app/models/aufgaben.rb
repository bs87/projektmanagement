class Aufgaben < ActiveRecord::Base
	#attr_accessible :vorname, :nachname, :email, :password, :password_confirmation
	attr_accessible :aufgabenname, :aufgabenbeschreibung, :aufgabenvorgaenger, :aufgabennr, :projektsid
end
