class Aufgaben < ActiveRecord::Base
	#attr_accessible :vorname, :nachname, :email, :password, :password_confirmation
	attr_accessible :id, :aufgabenname, :aufgabenbeschreibung, :aufgabenvorgaenger, :aufgabennr, :projektsid
 has_many :arbeitspaket ,:foreign_key => "aufgabeid", :dependent => :destroy 
 belongs_to :projekt
   validates :aufgabenname, presence: true
end
