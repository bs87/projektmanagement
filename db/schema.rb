# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131227204609) do

  create_table "Arbeitspakets", force: true do |t|
    t.string   "Arbeitspaketname",                 limit: 45
    t.string   "Arbeitspaketbeschreibung",         limit: 45
    t.integer  "Arbeitspaketverantwortlicher"
    t.integer  "Arbeitspaketbeginn"
    t.integer  "Arbeitspaketdauer"
    t.integer  "Arbeitspaketende"
    t.integer  "Arbeitspaketnummer"
    t.string   "Arbeitspaketziel",                 limit: 45
    t.string   "Arbeitspaketeingangsdokumente",    limit: 45
    t.string   "Arbeitspaketausgangsdokumente",    limit: 45
    t.integer  "AufgabenID"
    t.integer  "Verantwortlichkeiten_ArbeitsID"
    t.string   "Verantwortlichkeiten_RessourceID", limit: 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "Aufgabens", force: true do |t|
    t.string   "Aufgabenname",                limit: 45
    t.string   "Aufgabenbeschreibung",        limit: 45
    t.integer  "Aufgabenebene"
    t.string   "ProjektID",                   limit: 45
    t.integer  "Arbeitspaket_ArbeitspaketID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "Ressourcens", force: true do |t|
    t.string   "Ressourcename",         limit: 45
    t.string   "Ressourcebeschreibung", limit: 45
    t.string   "Ressourceart",          limit: 45
    t.string   "Ressourcekuerzel",      limit: 45
    t.boolean  "Ressourcegenerisch"
    t.integer  "Ressourcemax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "Roadstops", force: true do |t|
    t.string   "Roadstopspart", limit: 45
    t.integer  "Roadstopsdate"
    t.integer  "ProjektID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "Verantwortlichkeitens", force: true do |t|
    t.integer  "ArbeitspaketID"
    t.string   "RessourceID",             limit: 45
    t.integer  "Intensitaet"
    t.string   "Beschreibung",            limit: 45
    t.integer  "Ressourcen_RessourcenID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projekts", force: true do |t|
    t.string   "Projektname"
    t.integer  "Projektleiter"
    t.string   "Projektstart"
    t.string   "Projektende"
    t.string   "Projektbeschreibung"
    t.integer  "Roadstops_RoadstopsID"
    t.integer  "Aufgaben_AufgabenID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                       default: "", null: false
    t.string   "encrypted_password",          default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "vorname"
    t.string   "nachname"
    t.integer  "Projekt_ProjektID"
    t.integer  "Arbeitspaket_ArbeitspaketID"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
