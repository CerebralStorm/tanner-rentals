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

ActiveRecord::Schema.define(version: 20140920164506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: true do |t|
    t.integer  "lease_id"
    t.integer  "user_id"
    t.datetime "date_issued"
    t.datetime "date_due"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leases", force: true do |t|
    t.integer  "user_id"
    t.integer  "unit_id"
    t.boolean  "month_to_month"
    t.float    "rent"
    t.float    "security_deposit"
    t.float    "additional_charges"
    t.float    "total_charges"
    t.float    "late_fee"
    t.float    "pet_fee"
    t.float    "initial_pet_fee"
    t.float    "parking_fee"
    t.text     "included_utilities"
    t.text     "occupants"
    t.text     "parking_description"
    t.integer  "days_rent_late"
    t.string   "make_payable_to"
    t.string   "owner_notice_address"
    t.integer  "days_security_deposit_return"
    t.integer  "days_security_deposit_notice"
    t.integer  "day_rent_due"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "resident_consent_to_esign"
    t.boolean  "owner_consent_to_esign"
    t.datetime "resident_sign_date"
    t.datetime "owner_sign_date"
    t.string   "resident_sig_url"
    t.string   "owner_sig_url"
    t.string   "status",                       default: "pending"
    t.text     "inventory"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leases", ["user_id", "unit_id"], name: "index_leases_on_user_id_and_unit_id", using: :btree

  create_table "photos", force: true do |t|
    t.integer  "unit_id"
    t.string   "url"
    t.boolean  "feature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["unit_id"], name: "index_photos_on_unit_id", using: :btree

  create_table "properties", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "description_header"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "properties", ["user_id"], name: "index_properties_on_user_id", using: :btree

  create_table "units", force: true do |t|
    t.integer  "property_id"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.integer  "square_feet"
    t.string   "description_header"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,        null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "phone"
    t.boolean  "has_lease",              default: false
    t.string   "role",                   default: "Tenant"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
