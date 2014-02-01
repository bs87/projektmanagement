class Projekt < ActiveRecord::Base
	attr_accessible :id, :projektname, :projektleiter, :projektstart, :projektende, :projektbeschreibung

 has_many :aufgaben,:foreign_key => "projektsid", :dependent => :destroy 

  validates :projektname, presence: true, :uniqueness => true
  validates :projektstart, presence: true

end
