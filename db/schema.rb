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

ActiveRecord::Schema.define(:version => 20120423182345) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

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

  create_table "book_reservations", :force => true do |t|
    t.integer  "reservation_id"
    t.string   "ip_address"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "card_type"
    t.date     "card_expires_on"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "book_transactions", :force => true do |t|
    t.integer  "book_reservation_id"
    t.string   "action"
    t.integer  "amount"
    t.boolean  "success"
    t.string   "authorization"
    t.string   "message"
    t.text     "params"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "crews", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price",       :precision => 10, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "function_room_images", :force => true do |t|
    t.integer  "function_room_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "function_rooms", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "capacity"
    t.datetime "created_at",                                                      :null => false
    t.datetime "updated_at",                                                      :null => false
    t.decimal  "price",                            :precision => 10, :scale => 0
    t.string   "image_function_room_file_name"
    t.string   "image_function_room_content_type"
    t.integer  "image_function_room_file_size"
    t.datetime "image_function_room_updated_at"
  end

  create_table "menu_addons_line_items", :force => true do |t|
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
    t.integer  "reservation_id"
    t.integer  "recipe_id"
    t.decimal  "price",          :precision => 10, :scale => 0, :default => 0
    t.integer  "quantity",                                      :default => 1
  end

  create_table "menu_categories", :force => true do |t|
    t.string   "name"
    t.text     "desription"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "menu_recipes", :force => true do |t|
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "recipe_id"
    t.integer  "menu_id"
    t.decimal  "price",      :precision => 10, :scale => 0
  end

  create_table "menu_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.text     "desription"
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
    t.integer  "menu_category_id"
    t.decimal  "price",            :precision => 10, :scale => 0, :default => 0
    t.integer  "menu_type_id"
  end

  create_table "package_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "package_crews", :force => true do |t|
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.integer  "crew_id"
    t.integer  "package_id"
    t.decimal  "price",      :precision => 10, :scale => 0
    t.integer  "quantity",                                  :default => 1
  end

  create_table "package_line_items", :force => true do |t|
    t.integer  "menu_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.decimal  "price",          :precision => 10, :scale => 0
    t.integer  "reservation_id"
  end

  create_table "package_menus", :force => true do |t|
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "package_id"
    t.decimal  "price",      :precision => 10, :scale => 0
    t.integer  "menu_id"
  end

  create_table "packages", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price",               :precision => 10, :scale => 0
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.integer  "package_category_id"
  end

  create_table "recipe_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "recipe_images", :force => true do |t|
    t.integer  "recipe_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price",                     :precision => 10, :scale => 0
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.integer  "recipe_category_id"
    t.string   "image_recipe_file_name"
    t.string   "image_recipe_content_type"
    t.integer  "image_recipe_file_size"
    t.datetime "image_recipe_updated_at"
    t.integer  "menu_type_id"
  end

  create_table "reservation_crews", :force => true do |t|
    t.integer  "crew_id"
    t.integer  "reservation_id"
    t.integer  "quantity"
    t.decimal  "price",          :precision => 10, :scale => 0
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "reservation_function_rooms", :force => true do |t|
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
    t.integer  "function_room_id"
    t.integer  "reservation_id"
    t.decimal  "price",            :precision => 10, :scale => 0, :default => 0
  end

  create_table "reservation_menus", :force => true do |t|
    t.integer  "reservation_id"
    t.integer  "menu_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.decimal  "price",          :precision => 10, :scale => 0
  end

  create_table "reservation_packages", :force => true do |t|
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
    t.integer  "reservation_id"
    t.integer  "package_id"
    t.decimal  "price",          :precision => 10, :scale => 0, :default => 0
  end

  create_table "reservations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "contact"
    t.date     "date"
    t.time     "timeStart"
    t.time     "timeEnd"
    t.integer  "numGuest"
    t.datetime "created_at",                                                       :null => false
    t.datetime "updated_at",                                                       :null => false
    t.integer  "service_id"
    t.string   "email"
    t.decimal  "total_price",        :precision => 10, :scale => 0, :default => 0
    t.date     "booked_at"
    t.boolean  "reservation_option"
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
