# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create!(email: 'admin@afda.de', password: 'dafdddafsdf')
Role.delete_all
Role.create!(id: 1, name: 'admin')
Role.create!(id: 2, name: 'reguser')


User.delete_all
User.create!(id: 1, email: 'admin@pm.de', password: '12345678', vorname: 'hugo', nachname: 'boss', roleid: 1)
User.create!(id: 2, email: 'homer@pm.de', password: '12345678', vorname: 'homer', nachname: 'simpson', roleid: 2)
User.create!(id: 3, email: 'marge@pm.de', password: '12345678', vorname: 'marge', nachname: 'simpson', roleid: 2)

Ressourcen.delete_all
Ressourcen.create!(id: 1, ressourcename: 'Mr. Burns', ressourcefunktion: 'Bauleiter', ressourcebeschreibung: '3 Jahre Erfahrung', ressourceart: 'Arbeit', ressourcekuerzel: 'SE', ressourcegenerisch: 1, ressourcemax: 100, kosten: 80, gruppen_id: 1)
Ressourcen.create!(id: 2, ressourcename: 'Krusty Clown', ressourcefunktion: 'Designer', ressourcebeschreibung: '25 Jahre Erfahrung, Photoshop Zertifikat', ressourceart: 'Arbeit', ressourcekuerzel: 'DE', ressourcegenerisch: 1, ressourcemax: 100, kosten: 90, gruppen_id: nil)
Ressourcen.create!(id: 3, ressourcename: 'Tingeltangel Bob', ressourcefunktion: 'Projektleiter', ressourcebeschreibung: '15 Jahre Erfahrung', ressourceart: 'Arbeit', ressourcekuerzel: 'PL', ressourcegenerisch: 1, ressourcemax: 100, kosten: 120, gruppen_id: nil)

Projekt.delete_all
Projekt.create!( id: 1, projektname: 'Brückenbau', projektleiter: 'homer@pm.de', projektstart: '2014-01-15', projektbeschreibung: 'Bau der Berliner Brücke' )

Aufgaben.delete_all
Aufgaben.create!( id: 1, aufgabenname: 'Definition', aufgabenbeschreibung: 'Beschreibung Definition', aufgabenvorgaenger: nil, projektsid: 1 )

Aufgaben.create!( id: 2, aufgabenname: 'Planung', aufgabenbeschreibung: 'Beschreibung Definition', aufgabenvorgaenger: nil, projektsid: 1 )
Aufgaben.create!( id: 5, aufgabenname: 'Pläne erstellen', aufgabenbeschreibung: 'Beschreibung Pläne erstellen', aufgabenvorgaenger: 2, projektsid: 1 )
Aufgaben.create!( id: 6, aufgabenname: 'Organisation', aufgabenbeschreibung: 'Beschreibung Organisation', aufgabenvorgaenger: 2, projektsid: 1 )

Aufgaben.create!( id: 3, aufgabenname: 'Durchführung', aufgabenbeschreibung: 'Beschreibung Durchführung', aufgabenvorgaenger: nil, projektsid: 1 )
Aufgaben.create!( id: 7, aufgabenname: 'Materialbeschaffung', aufgabenbeschreibung: 'Materialbeschaffung Beschreibung', aufgabenvorgaenger: 3, projektsid: 1 )
Aufgaben.create!( id: 8, aufgabenname: 'Grabungen', aufgabenbeschreibung: 'Grabungen Beschreibung', aufgabenvorgaenger: 3, projektsid: 1 )
Aufgaben.create!( id: 9, aufgabenname: 'Pfeiler aufstellen', aufgabenbeschreibung: 'Beschreibung Pfeiler', aufgabenvorgaenger: 3, projektsid: 1 )

Aufgaben.create!( id: 4, aufgabenname: 'Abschluss', aufgabenbeschreibung: 'Beschreibung Definition', aufgabenvorgaenger: nil, projektsid: 1 )
Aufgaben.create!( id: 10, aufgabenname: 'Qualitätssicherung', aufgabenbeschreibung: 'Beschreibung QS', aufgabenvorgaenger: 4, projektsid: 1 )
Aufgaben.create!( id: 11, aufgabenname: 'Präsentation', aufgabenbeschreibung: 'Beschreibung Präsi', aufgabenvorgaenger: 4, projektsid: 1 )


Arbeitspaket.delete_all
#Definition	
Arbeitspaket.create!( id: 1, arbeitspaketname: 'Ziele festlegen', arbeitspaketbeschreibung: 'Festlegung der Ziele', arbeitspaketdauer: 3, arbeitspaketziel: 'Ziele sind genau defniert', arbeitspaketeingangsdokumente: 'Anforderungskatalog', arbeitspaketsausgangsdokumente: 'Pflichtenheft', aufgabeid: 1, arbeitspakettyp: 'Standard' )
Arbeitspaket.create!( id: 2, arbeitspaketname: 'Ressourcen festlegen', arbeitspaketbeschreibung: 'Festlegung der Ressourcen', arbeitspaketdauer: 2, arbeitspaketziel: 'Ressourcen sind genau defniert', arbeitspaketeingangsdokumente: nil, arbeitspaketsausgangsdokumente: 'Ressourcenplan', aufgabeid: 1, arbeitspakettyp: 'Standard' )

#Planung
Arbeitspaket.create!( id: 3, arbeitspaketname: 'Statik Pläne erstellen', arbeitspaketbeschreibung: 'Statik bestimmen', arbeitspaketdauer: 5, arbeitspaketziel: 'Statik ist berechnet', arbeitspaketeingangsdokumente: 'Bauunterlagen', arbeitspaketsausgangsdokumente: 'Statikzeichnung', aufgabeid: 5, arbeitspakettyp: 'Standard', produkt_id: 1 )
Arbeitspaket.create!( id: 4, arbeitspaketname: 'Ansprechpartner ermitteln', arbeitspaketbeschreibung: 'Beschreibung Ansprechpartner ermittlen', arbeitspaketdauer: 6, arbeitspaketziel: 'Ansprechpartner sind ermittelt', arbeitspaketeingangsdokumente: nil, arbeitspaketsausgangsdokumente: 'Liste der Ansprechpartner', aufgabeid: 6, arbeitspakettyp: 'Release', produkt_id: 3 )
Arbeitspaket.create!( id: 5, arbeitspaketname: 'Präsentationslayout Designen', arbeitspaketbeschreibung: 'Design bestimmen', arbeitspaketdauer: 2, arbeitspaketziel: 'Design steht', arbeitspaketeingangsdokumente: 'Design in CSS Format', arbeitspaketsausgangsdokumente: 'Pflichtenheft', aufgabeid: 11, arbeitspakettyp: 'Milestone', produkt_id: 4 )
Arbeitspaket.create!( id: 6, arbeitspaketname: 'Präsentation halten', arbeitspaketbeschreibung: 'Präsi halten', arbeitspaketdauer: 1, arbeitspaketziel: 'Präsi gehalten', arbeitspaketeingangsdokumente: 'PPP', arbeitspaketsausgangsdokumente: nil, aufgabeid: 11, arbeitspakettyp: 'Standard' , produkt_id: 1)


Verantwortlichkeiten.delete_all
Verantwortlichkeiten.create!( id: 1, arbeitspaketid: 1, ressourceid: 1, intensitaet: 50, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 2, arbeitspaketid: 1, ressourceid: 2, intensitaet: 50, beschreibung: 'Beschreibung')

Arbeitspaketvorgaenger.delete_all
Arbeitspaketvorgaenger.create!( id: 1, apid: 2, apvorgaengerid: 1)
Arbeitspaketvorgaenger.create!( id: 2, apid: 3, apvorgaengerid: 2)
Arbeitspaketvorgaenger.create!( id: 3, apid: 4, apvorgaengerid: 3)
Arbeitspaketvorgaenger.create!( id: 4, apid: 5, apvorgaengerid: 4)
Arbeitspaketvorgaenger.create!( id: 5, apid: 5, apvorgaengerid: 4)
Arbeitspaketvorgaenger.create!( id: 6, apid: 6, apvorgaengerid: 5)

Ressourcefunction.delete_all
Ressourcefunction.create!(id:1, name: "Bauleiter")
Ressourcefunction.create!(id:2, name: "Projektleiter")
Ressourcefunction.create!(id:3, name: "Statiker")
Ressourcefunction.create!(id:4, name: "Bauarbeiter")
Ressourcefunction.create!(id:5, name: "Kranführer")
Ressourcefunction.create!(id:6, name: "Programmierer")

Produktkategorie.delete_all
Produktkategorie.create!(id:1, name: "Metallprodukte", projekt_id: 1, vorgaenger_id: nil )
Produktkategorie.create!(id:3, name: "Eisenprodukte", projekt_id: 1, vorgaenger_id: 1 )
Produktkategorie.create!(id:4, name: "Stahlprodukte", projekt_id: 1, vorgaenger_id: 1 )
Produktkategorie.create!(id:2, name: "Plastikprodukte", projekt_id: 1, vorgaenger_id: nil )
Produktkategorie.create!(id:5, name: "Plastik", projekt_id: 1, vorgaenger_id: 2 )
Produktkategorie.create!(id:6, name: "UnterstePlastikprodukte", projekt_id: 1, vorgaenger_id: 5 )

Produkt.delete_all
Produkt.create!(id:1, name:"Stange", kat_id: 1, typ: "release", ap_id: nil )
Produkt.create!(id:2, name:"Eisenstange", kat_id: 3, typ: "release", ap_id: nil )
Produkt.create!(id:3, name:"Stahlzange", kat_id: 4, typ: "release", ap_id: nil )
Produkt.create!(id:4, name:"Stahlsaege", kat_id: 4, typ: "release", ap_id: nil )
Produkt.create!(id:5, name:"Plastikball", kat_id: 2, typ: "release", ap_id: nil )
Produkt.create!(id:6, name:"Plastikhut", kat_id: 5, typ: "release", ap_id: nil )
Produkt.create!(id:7, name:"Plastikstil", kat_id: 6, typ: "release", ap_id: nil )