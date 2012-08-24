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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120719210743) do

  create_table "optimus", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "preclientes", :force => true do |t|
    t.string   "pr_apellido"
    t.string   "pr_nombre"
    t.string   "pr_domicilio"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "tr_planes", :force => true do |t|
    t.string   "pl_nombre",    :limit => 100
    t.decimal  "pl_importe",                  :precision => 8, :scale => 2
    t.string   "pl_veloc",     :limit => 6
    t.boolean  "pl_elim",                                                   :default => false
    t.integer  "us_idusuario"
    t.datetime "created_at",                                                                   :null => false
    t.datetime "updated_at",                                                                   :null => false
  end

  create_table "tr_torres", :force => true do |t|
    t.string   "tr_nombre"
    t.integer  "tr_localidad"
    t.string   "tr_respon"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "trlocalidads", :force => true do |t|
    t.string   "lo_nombre"
    t.string   "lo_cp",        :limit => 100
    t.string   "lo_dpto"
    t.string   "lo_provincia"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "trnodos", :force => true do |t|
    t.string   "no_nombre"
    t.string   "no_ip"
    t.integer  "no_idtorres"
    t.integer  "no_iduser"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.date     "no_fec"
  end

end
