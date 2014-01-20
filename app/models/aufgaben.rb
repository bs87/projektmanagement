class Aufgaben < ActiveRecord::Base
	#attr_accessible :vorname, :nachname, :email, :password, :password_confirmation
	attr_accessible :id, :aufgabenname, :aufgabenbeschreibung, :aufgabenvorgaenger, :aufgabennr, :projektsid
 has_many :arbeitspaket, :dependent => :destroy
 belongs_to :projekt
end
