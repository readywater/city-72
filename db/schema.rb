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

ActiveRecord::Schema.define(:version => 20140618183459) do

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "affiliates", :force => true do |t|
    t.integer  "city_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name",                  :null => false
    t.string   "abbreviation"
    t.string   "moniker"
    t.string   "image"
    t.string   "image_credit"
    t.string   "resident_image"
    t.string   "resident_image_credit"
    t.string   "contact_email"
    t.string   "agency_site"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "possessive"
    t.string   "brought_by"
    t.string   "agency_url"
    t.integer  "color_cd"
    t.text     "statement"
  end

  create_table "city_connections", :force => true do |t|
    t.string   "facebook_page_url"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "city_networks", :force => true do |t|
    t.string   "headline"
    t.string   "now"
    t.string   "in_an_emergency"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.boolean  "fixed"
    t.string   "network_url"
    t.boolean  "included"
    t.integer  "city_connection_id"
  end

  create_table "city_resources", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "website"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "city_connection_id"
    t.boolean  "included"
  end

  create_table "current_modes", :force => true do |t|
    t.boolean  "mode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emergency_data", :force => true do |t|
    t.string   "map_url"
    t.string   "citizen_timeline_id"
    t.string   "partner_timeline_id"
    t.string   "transportation_timeline_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "your_hashtag_timeline_id"
  end

  create_table "emergency_stories", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.text     "story"
    t.integer  "call_to_action_cd"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.boolean  "selected"
  end

  create_table "items", :force => true do |t|
    t.string   "image"
    t.string   "title"
    t.text     "use_case"
    t.string   "category"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "order"
  end

  create_table "kits", :force => true do |t|
    t.string   "image"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "modes", :force => true do |t|
    t.boolean  "em_mode"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "title"
    t.string   "text"
    t.string   "recommendation_1_title"
    t.text     "recommendation_1_text"
    t.string   "recommendation_2_title"
    t.text     "recommendation_2_text"
    t.string   "recommendation_3_title"
    t.text     "recommendation_3_text"
  end

  create_table "plans", :force => true do |t|
    t.integer  "city_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "emergency_type_cd"
  end

  create_table "simple_captcha_data", :force => true do |t|
    t.string   "key",        :limit => 40
    t.string   "value",      :limit => 6
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "simple_captcha_data", ["key"], :name => "idx_key"

  create_table "twitter_accounts", :force => true do |t|
    t.integer  "city_connection_id"
    t.string   "username"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
