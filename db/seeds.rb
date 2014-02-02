# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create!(email: 'admin@afda.de', password: 'dafdddafsdf')
Role.delete_all
Arbeitspaket.delete_all
User.delete_all
Ressourcen.delete_all
Projekt.delete_all
Aufgaben.delete_all
Verantwortlichkeiten.delete_all
Arbeitspaketvorgaenger.delete_all
Ressourcefunction.delete_all
Produktkategorie.delete_all
Produkt.delete_all

Role.create!(id: 1, name: 'admin')
Role.create!(id: 2, name: 'reguser')

User.create!(id: 1, email: 'admin@pm.de', password: '12345678', vorname: 'hugo', nachname: 'boss', roleid: 1)
User.create!(id: 2, email: 'homer@pm.de', password: '12345678', vorname: 'homer', nachname: 'simpson', roleid: 2)
User.create!(id: 3, email: 'marge@pm.de', password: '12345678', vorname: 'marge', nachname: 'simpson', roleid: 2)
User.create!(id: 4, email: 'bart@pm.de',  password: '12345678', vorname: 'bart', nachname: 'simpson', roleid: 2)

Ressourcen.create!(id: 1, ressourcename: 'Ned Flanders', ressourcefunktion: 1, ressourcebeschreibung: '3 Jahre Erfahrung', ressourceart: 'Arbeit', ressourcemax: 150)
Ressourcen.create!(id: 2, ressourcename: 'Krusty der Clown', ressourcefunktion: 2, ressourcebeschreibung: '25 Jahre Erfahrung, Photoshop Zertifikat', ressourceart: 'Arbeit', ressourcemax: 100)
Ressourcen.create!(id: 3, ressourcename: 'Tingeltangel Bob', ressourcefunktion: 3, ressourcebeschreibung: '15 Jahre Erfahrung', ressourceart: 'Arbeit', ressourcemax: 100)
Ressourcen.create!(id: 4, ressourcename: 'Mr Burns', ressourcefunktion: 4, ressourcebeschreibung: '150 Jahre Erfahrung', ressourceart: 'Arbeit', ressourcemax: 10)
Ressourcen.create!(id: 5, ressourcename: 'Stahlstuetzen', ressourcefunktion: 9, ressourcebeschreibung: 'Stahlstuetzen Beschr.', ressourceart: 'Material', ressourcemax: 4)
Ressourcen.create!(id: 6, ressourcename: 'Beton', ressourcefunktion: 9, ressourcebeschreibung: 'Beton Beschr.', ressourceart: 'Material', ressourcemax: 120)
Ressourcen.create!(id: 7, ressourcename: 'Holzplatten', ressourcefunktion: 9, ressourcebeschreibung: 'Holzplatten Beschr.', ressourceart: 'Material', ressourcemax: 25)
Ressourcen.create!(id: 8, ressourcename: 'homer@pm.de', ressourcefunktion: 5, ressourcebeschreibung: 'Homer Beschr.', ressourceart: 'Arbeit', ressourcemax: 60)
Ressourcen.create!(id: 9, ressourcename: 'marge@pm.de', ressourcefunktion: 6, ressourcebeschreibung: 'Marge Beschr.', ressourceart: 'Arbeit', ressourcemax: 120)

Ressourcefunction.create!(id:1, name: "Bauleiter")
Ressourcefunction.create!(id:2, name: "Projektleiter")
Ressourcefunction.create!(id:3, name: "Statiker")
Ressourcefunction.create!(id:4, name: "Bauarbeiter")
Ressourcefunction.create!(id:5, name: "Kranführer")
Ressourcefunction.create!(id:6, name: "Programmierer")
Ressourcefunction.create!(id:7, name: "LKW Fahrer")
Ressourcefunction.create!(id:8, name: "Maurer")
Ressourcefunction.create!(id:9, name: "Materialressource")
#################### Springfield Brueckenbau ########################

Projekt.create!( id: 1, projektname: 'Brueckenbau Sprinfield', projektleiter: 'homer@pm.de', projektstart: '2014-01-28', projektbeschreibung: 'Bau einer Bruecke in Springfield' )

Aufgaben.create!( id: 1, aufgabenname: 'Definition', aufgabenbeschreibung: 'Beschreibung Definition', aufgabenvorgaenger: nil, projektsid: 1 )
  Aufgaben.create!( id: 2, aufgabenname: 'Planung', aufgabenbeschreibung: 'Beschreibung Definition', aufgabenvorgaenger: nil, projektsid: 1 )
  Aufgaben.create!( id: 5, aufgabenname: 'Plaene erstellen', aufgabenbeschreibung: 'Beschreibung Pläne erstellen', aufgabenvorgaenger: 2, projektsid: 1 )
  Aufgaben.create!( id: 6, aufgabenname: 'Organisation', aufgabenbeschreibung: 'Beschreibung Organisation', aufgabenvorgaenger: 2, projektsid: 1 )
Aufgaben.create!( id: 3, aufgabenname: 'Durchfuehrung', aufgabenbeschreibung: 'Beschreibung Durchführung', aufgabenvorgaenger: nil, projektsid: 1 )
  Aufgaben.create!( id: 7, aufgabenname: 'Materialbeschaffung', aufgabenbeschreibung: 'Materialbeschaffung Beschreibung', aufgabenvorgaenger: 3, projektsid: 1 )
  Aufgaben.create!( id: 8, aufgabenname: 'Grabungen', aufgabenbeschreibung: 'Grabungen Beschreibung', aufgabenvorgaenger: 3, projektsid: 1 )
  Aufgaben.create!( id: 9, aufgabenname: 'Pfeiler aufstellen', aufgabenbeschreibung: 'Beschreibung Pfeiler', aufgabenvorgaenger: 3, projektsid: 1 )
Aufgaben.create!( id: 4, aufgabenname: 'Abschluss', aufgabenbeschreibung: 'Beschreibung Definition', aufgabenvorgaenger: nil, projektsid: 1 )
  Aufgaben.create!( id: 10, aufgabenname: 'Qualitätssicherung', aufgabenbeschreibung: 'Beschreibung QS', aufgabenvorgaenger: 4, projektsid: 1 )
  Aufgaben.create!( id: 11, aufgabenname: 'Praesentation', aufgabenbeschreibung: 'Beschreibung Praesi', aufgabenvorgaenger: 4, projektsid: 1 )

Arbeitspaket.create!( id: 1, arbeitspaketname: 'Ziele festlegen', arbeitspaketbeschreibung: 'Festlegung der Ziele', arbeitspaketdauer: 3, arbeitspaketziel: 'Ziele sind genau defniert', arbeitspaketeingangsdokumente: 'Anforderungskatalog', arbeitspaketsausgangsdokumente: 'Pflichtenheft', aufgabeid: 1, arbeitspakettyp: 'Standard', produkt_id: 2 )
Arbeitspaket.create!( id: 2, arbeitspaketname: 'Ressourcen festlegen', arbeitspaketbeschreibung: 'Festlegung der Ressourcen', arbeitspaketdauer: 2, arbeitspaketziel: 'Ressourcen sind genau defniert', arbeitspaketeingangsdokumente: nil, arbeitspaketsausgangsdokumente: 'Ressourcenplan', aufgabeid: 1, arbeitspakettyp: 'Standard', produkt_id: 5 )
Arbeitspaket.create!( id: 3, arbeitspaketname: 'Statik Pläne erstellen', arbeitspaketbeschreibung: 'Statik bestimmen', arbeitspaketdauer: 5, arbeitspaketziel: 'Statik ist berechnet', arbeitspaketeingangsdokumente: 'Bauunterlagen', arbeitspaketsausgangsdokumente: 'Statikzeichnung', aufgabeid: 5, arbeitspakettyp: 'Standard', produkt_id: 1 )
Arbeitspaket.create!( id: 4, arbeitspaketname: 'Ansprechpartner ermitteln', arbeitspaketbeschreibung: 'Beschreibung Ansprechpartner ermittlen', arbeitspaketdauer: 6, arbeitspaketziel: 'Ansprechpartner sind ermittelt', arbeitspaketeingangsdokumente: nil, arbeitspaketsausgangsdokumente: 'Liste der Ansprechpartner', aufgabeid: 6, arbeitspakettyp: 'Standard', produkt_id: 3 )
Arbeitspaket.create!( id: 5, arbeitspaketname: 'Präsentationslayout Designen', arbeitspaketbeschreibung: 'Design bestimmen', arbeitspaketdauer: 2, arbeitspaketziel: 'Design steht', arbeitspaketeingangsdokumente: 'Design in CSS Format', arbeitspaketsausgangsdokumente: 'Pflichtenheft', aufgabeid: 11, arbeitspakettyp: 'Standard', produkt_id: 4 )
Arbeitspaket.create!( id: 6, arbeitspaketname: 'Präsentation halten', arbeitspaketbeschreibung: 'Präsi halten', arbeitspaketdauer: 1, arbeitspaketziel: 'Präsi gehalten', arbeitspaketeingangsdokumente: 'PPP', arbeitspaketsausgangsdokumente: nil, aufgabeid: 11, arbeitspakettyp: 'Standard' , produkt_id: 1)

Verantwortlichkeiten.create!( id: 1, arbeitspaketid: 1, ressourceid: 1, intensitaet: 50, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 2, arbeitspaketid: 1, ressourceid: 2, intensitaet: 50, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 3, arbeitspaketid: 2, ressourceid: 2, intensitaet: 10, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 4, arbeitspaketid: 3, ressourceid: 5, intensitaet: 1, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 5, arbeitspaketid: 6, ressourceid: 8, intensitaet: 20, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 6, arbeitspaketid: 7, ressourceid: 8, intensitaet: 15, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 7, arbeitspaketid: 5, ressourceid: 9, intensitaet: 30, beschreibung: 'Beschreibung')

Arbeitspaketvorgaenger.create!( id: 1, apid: 2, apvorgaengerid: 1)
Arbeitspaketvorgaenger.create!( id: 2, apid: 3, apvorgaengerid: 2)
Arbeitspaketvorgaenger.create!( id: 3, apid: 4, apvorgaengerid: 3)
Arbeitspaketvorgaenger.create!( id: 4, apid: 5, apvorgaengerid: 4)
Arbeitspaketvorgaenger.create!( id: 5, apid: 5, apvorgaengerid: 4)
Arbeitspaketvorgaenger.create!( id: 6, apid: 6, apvorgaengerid: 5)

Produktkategorie.create!(id:1, name: "Plaene", projekt_id: 1, vorgaenger_id: nil )
Produktkategorie.create!(id:3, name: "Dateien", projekt_id: 1, vorgaenger_id: 1 )
Produktkategorie.create!(id:4, name: "Sonstiges", projekt_id: 1, vorgaenger_id: 1 )


Produkt.create!(id:1, name:"Statikplan", kat_id: 1, typ: "Milestone", ap_id: nil )
Produkt.create!(id:2, name:"Ressourcenplan", kat_id: 1, typ: "Standard", ap_id: nil )
Produkt.create!(id:3, name:"Praesentation", kat_id: 2, typ: "Milestone", ap_id: nil )
Produkt.create!(id:4, name:"Handout", kat_id: 2, typ: "Standard", ap_id: nil )
Produkt.create!(id:5, name:"Ansprechpartnerliste", kat_id: 2, typ: "Milestone", ap_id: nil )
Produkt.create!(id:6, name:"Vertrag", kat_id: 3, typ: "Standard", ap_id: nil )
Produkt.create!(id:7, name:"Design PPP", kat_id: 3, typ: "Milestone", ap_id: nil )


######################### Atomkraftwerkbau Springfield #########################

Projekt.create!( id: 2, projektname: 'Atomkraftwerkbau Springfield', projektleiter: 'homer@pm.de', projektstart: '2014-01-20', projektbeschreibung: 'Bau eines Atomkraftwerks in Springfield' )

Aufgaben.create!( id: 12, aufgabenname: 'Fundament', aufgabenbeschreibung: 'Beschreibung Fundament', aufgabenvorgaenger: nil, projektsid: 2 )
  Aufgaben.create!( id: 16, aufgabenname: 'Ausgrabungen', aufgabenbeschreibung: 'Beschreibung Ausgrabungen', aufgabenvorgaenger: 12, projektsid: 2)
  Aufgaben.create!( id: 17, aufgabenname: 'Fundament bauen', aufgabenbeschreibung: 'Beschreibung Fundament', aufgabenvorgaenger: 12, projektsid: 2 )
Aufgaben.create!( id: 13, aufgabenname: 'Mauern', aufgabenbeschreibung: 'Beschreibung Mauern', aufgabenvorgaenger: nil, projektsid: 2 )
Aufgaben.create!( id: 14, aufgabenname: 'Dach', aufgabenbeschreibung: 'Beschreibung Dach', aufgabenvorgaenger: nil, projektsid: 2 )
  Aufgaben.create!( id: 19, aufgabenname: 'Planung', aufgabenbeschreibung: 'Beschreibung Planung', aufgabenvorgaenger: nil, projektsid: 2 )
  Aufgaben.create!( id: 20, aufgabenname: 'Konstruktion', aufgabenbeschreibung: 'Beschreibung Konstruktion', aufgabenvorgaenger: nil, projektsid: 2 )
Aufgaben.create!( id: 15, aufgabenname: 'Abnahme', aufgabenbeschreibung: 'Beschreibung Abnahme', aufgabenvorgaenger: nil, projektsid: 2)
  Aufgaben.create!( id: 22, aufgabenname: 'Übergabe', aufgabenbeschreibung: 'Beschreibung Übergabe', aufgabenvorgaenger: nil, projektsid: 2 )
  Aufgaben.create!( id: 23, aufgabenname: 'Qualitaetssicherung', aufgabenbeschreibung: 'Beschreibung Qualitaetssicherung', aufgabenvorgaenger: nil, projektsid: 2 )

Arbeitspaket.create!( id: 7, arbeitspaketname: 'Graben', arbeitspaketbeschreibung: 'Graben', arbeitspaketdauer: 3, arbeitspaketziel: 'Beschreibung Ziel', arbeitspaketeingangsdokumente: 'Eingangsdokument', arbeitspaketsausgangsdokumente: 'Ausgangsdokument', aufgabeid: 16, arbeitspakettyp: 'Standard' , produkt_id: 2)
Arbeitspaket.create!( id: 8, arbeitspaketname: 'Betonieren', arbeitspaketbeschreibung: 'Betonierung', arbeitspaketdauer: 2, arbeitspaketziel: 'Beschreibung Ziel', arbeitspaketeingangsdokumente: 'Eingangsdokument', arbeitspaketsausgangsdokumente: 'Ausgangsdokument', aufgabeid: 17, arbeitspakettyp: 'Standard', produkt_id: 1)
Arbeitspaket.create!( id: 9, arbeitspaketname: 'Mauern hochziehen', arbeitspaketbeschreibung: 'Mauern Beschr.', arbeitspaketdauer: 1, arbeitspaketziel: 'Beschreibung Ziel', arbeitspaketeingangsdokumente: 'Eingangsdokument', arbeitspaketsausgangsdokumente: 'Ausgangsdokument', aufgabeid: 13, arbeitspakettyp: 'Standard' , produkt_id: 3)
Arbeitspaket.create!( id: 10, arbeitspaketname: 'Mauern verputzen', arbeitspaketbeschreibung: 'Mauern verputzen', arbeitspaketdauer: 5, arbeitspaketziel: 'Beschreibung Ziel', arbeitspaketeingangsdokumente: 'Eingangsdokument', arbeitspaketsausgangsdokumente: 'Ausgangsdokument', aufgabeid: 13, arbeitspakettyp: 'Standard', produkt_id: 4 )
Arbeitspaket.create!( id: 11, arbeitspaketname: 'Pläne erstellen', arbeitspaketbeschreibung: 'Pläne erstellen', arbeitspaketdauer: 1, arbeitspaketziel: 'Beschreibung Ziel', arbeitspaketeingangsdokumente: 'Eingangsdokument', arbeitspaketsausgangsdokumente: 'Ausgangsdokument', aufgabeid: 19, arbeitspakettyp: 'Standard' , produkt_id: 5)
Arbeitspaket.create!( id: 12, arbeitspaketname: 'Statik berechnen', arbeitspaketbeschreibung: 'Statik berechnen', arbeitspaketdauer: 6, arbeitspaketziel: 'Beschreibung Ziel', arbeitspaketeingangsdokumente: 'Eingangsdokument', arbeitspaketsausgangsdokumente: 'Ausgangsdokument', aufgabeid: 19, arbeitspakettyp: 'Standard', produkt_id: 6 )
Arbeitspaket.create!( id: 13, arbeitspaketname: 'Dachstuhl erstellen', arbeitspaketbeschreibung: 'Dachstuhl erstellen', arbeitspaketdauer: 3, arbeitspaketziel: 'Beschreibung Ziel', arbeitspaketeingangsdokumente: 'Eingangsdokument', arbeitspaketsausgangsdokumente: 'Ausgangsdokument', aufgabeid: 20, arbeitspakettyp: 'Standard' , produkt_id: 1)
Arbeitspaket.create!( id: 14, arbeitspaketname: 'Dach decken', arbeitspaketbeschreibung: 'Dach decken', arbeitspaketdauer: 2, arbeitspaketziel: 'Beschreibung Ziel', arbeitspaketeingangsdokumente: 'Eingangsdokument', arbeitspaketsausgangsdokumente: 'Ausgangsdokument', aufgabeid: 20, arbeitspakettyp: 'Standard' , produkt_id: 2)
Arbeitspaket.create!( id: 15, arbeitspaketname: 'Übergabe an Burns', arbeitspaketbeschreibung: 'Übergabe an Burns', arbeitspaketdauer: 1, arbeitspaketziel: 'Beschreibung Ziel', arbeitspaketeingangsdokumente: 'Eingangsdokument', arbeitspaketsausgangsdokumente: 'Ausgangsdokument', aufgabeid: 22, arbeitspakettyp: 'Standard' , produkt_id: 3)
Arbeitspaket.create!( id: 16, arbeitspaketname: 'Qualitaet sichern', arbeitspaketbeschreibung: 'Qualitaet sichern', arbeitspaketdauer: 5, arbeitspaketziel: 'Beschreibung Ziel', arbeitspaketeingangsdokumente: 'Eingangsdokument', arbeitspaketsausgangsdokumente: 'Ausgangsdokument', aufgabeid: 23, arbeitspakettyp: 'Standard' , produkt_id: 4)

Verantwortlichkeiten.create!( id: 10, arbeitspaketid: 7, ressourceid: 1, intensitaet: 40, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 11, arbeitspaketid: 9, ressourceid: 3, intensitaet: 50, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 12, arbeitspaketid: 10, ressourceid: 4, intensitaet: 10, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 13, arbeitspaketid: 14, ressourceid: 6, intensitaet: 1, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 14, arbeitspaketid: 6, ressourceid: 8, intensitaet: 20, beschreibung: 'Beschreibung')
Verantwortlichkeiten.create!( id: 15, arbeitspaketid: 2, ressourceid: 9, intensitaet: 20, beschreibung: 'Beschreibung')

Arbeitspaketvorgaenger.create!( id: 7, apid: 8, apvorgaengerid: 7)
Arbeitspaketvorgaenger.create!( id: 8, apid: 9, apvorgaengerid: 8)
Arbeitspaketvorgaenger.create!( id: 9, apid: 10, apvorgaengerid: 9)
Arbeitspaketvorgaenger.create!( id: 10, apid: 11, apvorgaengerid: 9)
Arbeitspaketvorgaenger.create!( id: 11, apid: 12, apvorgaengerid: 9)
Arbeitspaketvorgaenger.create!( id: 17, apid: 13, apvorgaengerid: 10)
Arbeitspaketvorgaenger.create!( id: 12, apid: 13, apvorgaengerid: 11)
Arbeitspaketvorgaenger.create!( id: 13, apid: 14, apvorgaengerid: 12)
Arbeitspaketvorgaenger.create!( id: 14, apid: 15, apvorgaengerid: 14)
Arbeitspaketvorgaenger.create!( id: 15, apid: 15, apvorgaengerid: 13)
Arbeitspaketvorgaenger.create!( id: 16, apid: 16, apvorgaengerid: 15)

Produktkategorie.create!(id:9, name: "Fundament", projekt_id: 2, vorgaenger_id: nil )
Produktkategorie.create!(id:10, name: "Mauern", projekt_id: 2, vorgaenger_id: nil )
Produktkategorie.create!(id:11, name: "Dach", projekt_id: 2, vorgaenger_id: nil )

Produkt.create!(id:10, name:"Fundamentplan", kat_id: 6, typ: "Standard", ap_id: 8 )
Produkt.create!(id:11, name:"Mauerwerkplan", kat_id: 6, typ: "Standard", ap_id: 9 )
Produkt.create!(id:12, name:"Dachplan", kat_id: 6, typ: "Standard", ap_id: 13 )