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

ActiveRecord::Schema.define(version: 20140911010723) do

  create_table "clientes", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["email"], name: "index_clientes_on_email", unique: true
  add_index "clientes", ["reset_password_token"], name: "index_clientes_on_reset_password_token", unique: true

  create_table "informetecnicos", force: true do |t|
    t.date     "fechaingreso"
    t.time     "hora"
    t.string   "cedulanit"
    t.string   "nombreempresa"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "nombretecnico"
    t.boolean  "garantia"
    t.boolean  "servicio"
    t.boolean  "facturable"
    t.string   "valor"
    t.string   "dispositivo"
    t.string   "marcamodelo"
    t.string   "serialid"
    t.integer  "problema_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "informetecnicos", ["problema_id"], name: "index_informetecnicos_on_problema_id"

  create_table "problemas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicios", force: true do |t|
    t.date     "fecha"
    t.integer  "pedidoN"
    t.string   "nombre"
    t.string   "identificacion"
    t.string   "email"
    t.string   "direccion"
    t.string   "telefono"
    t.integer  "tipoServicio_id"
    t.string   "disponibilidad"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "servicios", ["tipoServicio_id"], name: "index_servicios_on_tipoServicio_id"

  create_table "tipo_servicios", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
