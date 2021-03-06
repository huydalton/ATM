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

ActiveRecord::Schema.define(:version => 20110505173308) do

  create_table "accounts", :force => true do |t|
    t.integer  "person_id"
    t.string   "name",                      :null => false
    t.integer  "balance",    :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "at_machines", :force => true do |t|
    t.integer  "cash",       :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "login_attempts", :force => true do |t|
    t.string   "ip",         :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "login_attempts", ["created_at"], :name => "index_login_attempts_on_created_at"
  add_index "login_attempts", ["ip"], :name => "index_login_attempts_on_ip"

  create_table "people", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "pin_hash",   :null => false
    t.string   "pin_salt",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "withdrawals", :force => true do |t|
    t.integer  "account_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
