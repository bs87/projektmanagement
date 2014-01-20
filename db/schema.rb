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

ActiveRecord::Schema.define(version: 20140118215244) do

  create_table "arbeitspakets", force: true do |t|
    t.string   "arbeitspaketname",                 limit: 45
    t.string   "arbeitspaketbeschreibung",         limit: 45
    t.integer  "arbeitspaketverantwortlicher"
    t.date     "arbeitspaketbeginn"
    t.integer  "arbeitspaketdauer"
    t.date     "arbeitspaketende"
    t.integer  "arbeitspaketnr"
    t.string   "arbeitspaketziel",                 limit: 45
    t.string   "arbeitspaketkuerzel",              limit: 45
    t.string   "arbeitspaketeingangsdokumente",    limit: 45
    t.string   "arbeitspaketausgangsdokumente",    limit: 45
    t.integer  "aufgabeid"
    t.integer  "verantwortlichkeiten_Arbeitsid"
    t.string   "verantwortlichkeiten_Ressourceid", limit: 45
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "arbeitspakettyp"
  end

  create_table "arbeitspaketvorgaengers", force: true do |t|
    t.integer  "apid"
    t.integer  "apvorgaengerid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aufgabens", force: true do |t|
    t.string   "aufgabenname",         limit: 45
    t.string   "aufgabenbeschreibung", limit: 45
    t.integer  "aufgabenvorgaenger"
    t.integer  "aufgabennr"
    t.integer  "projektsid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projekts", force: true do |t|
    t.string   "projektname"
    t.string   "projektleiter"
    t.string   "projektstart"
    t.string   "projektende"
    t.string   "projektbeschreibung"
    t.integer  "roadstops_roadstopsid"
    t.integer  "aufgaben_aufgabenid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ressourcens", force: true do |t|
    t.string   "ressourcename",         limit: 45
    t.string   "ressourcebeschreibung", limit: 45
    t.string   "ressourceart",          limit: 45
    t.string   "ressourcekuerzel",      limit: 45
    t.boolean  "ressourcegenerisch"
    t.integer  "ressourcemax"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gruppen_id"
    t.float    "kosten"
    t.string   "ressourcefunktion"
  end

  create_table "roadstops", force: true do |t|
    t.string   "roadstopspart", limit: 45
    t.integer  "roadstopsdate"
    t.integer  "projektid"
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
    t.integer  "projekt_projektid"
    t.integer  "arbeitspaket_arbeitspaketid"
    t.integer  "roleid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "verantwortlichkeitens", force: true do |t|
    t.integer  "arbeitspaketid"
    t.string   "ressourceid",    limit: 45
    t.integer  "intensitaet"
    t.string   "beschreibung",   limit: 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
