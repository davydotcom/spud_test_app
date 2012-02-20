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

ActiveRecord::Schema.define(:version => 20120220160229) do

  create_table "spud_admin_permissions", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.boolean  "access"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "spud_calendar_events", :force => true do |t|
    t.integer  "spud_calendar_id"
    t.string   "title"
    t.text     "description"
    t.datetime "start_at"
    t.datetime "end_at"
    t.boolean  "all_day"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "spud_calendar_events", ["spud_calendar_id"], :name => "index_spud_calendar_events_on_spud_calendar_id"

  create_table "spud_calendars", :force => true do |t|
    t.string   "title"
    t.binary   "color",      :limit => 6
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "spud_calendars", ["title"], :name => "index_spud_calendars_on_title"

  create_table "spud_categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_category_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "spud_categories", ["parent_category_id"], :name => "index_spud_categories_on_parent_category_id"

  create_table "spud_custom_fields", :force => true do |t|
    t.string   "parent_type"
    t.integer  "parent_id"
    t.string   "name"
    t.text     "value"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "spud_inquiries", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "spud_inquiry_fields", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.integer  "spud_inquiry_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "spud_inquiry_fields", ["spud_inquiry_id"], :name => "index_spud_inquiry_fields_on_spud_inquiry_id"

  create_table "spud_media", :force => true do |t|
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.string   "attachment_file_name"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "spud_menu_items", :force => true do |t|
    t.string   "parent_type"
    t.integer  "parent_id"
    t.integer  "item_type"
    t.integer  "spud_page_id"
    t.integer  "menu_order",   :default => 0
    t.string   "url"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "name"
    t.integer  "spud_menu_id"
    t.string   "classes"
  end

  add_index "spud_menu_items", ["menu_order"], :name => "index_spud_menu_items_on_menu_order"
  add_index "spud_menu_items", ["parent_type", "parent_id"], :name => "index_spud_menu_items_on_parent_type_and_parent_id"
  add_index "spud_menu_items", ["spud_menu_id"], :name => "index_spud_menu_items_on_spud_menu_id"

  create_table "spud_menus", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "spud_page_partials", :force => true do |t|
    t.integer  "spud_page_id"
    t.string   "name"
    t.text     "content"
    t.string   "format"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "spud_page_partials", ["spud_page_id"], :name => "index_spud_page_partials_on_spud_page_id"

  create_table "spud_pages", :force => true do |t|
    t.string   "name"
    t.string   "url_name"
    t.datetime "publish_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.string   "format",              :default => "html"
    t.integer  "spud_page_id"
    t.text     "meta_description"
    t.string   "meta_keywords"
    t.integer  "page_order"
    t.integer  "template_id"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.integer  "visibility",          :default => 0
    t.boolean  "published",           :default => true
    t.boolean  "use_custom_url_name", :default => false
    t.text     "notes"
  end

  create_table "spud_post_categories", :force => true do |t|
    t.integer  "spud_post_id"
    t.integer  "spud_category_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "spud_post_categories", ["spud_category_id"], :name => "index_spud_post_categories_on_spud_category_id"
  add_index "spud_post_categories", ["spud_post_id"], :name => "index_spud_post_categories_on_spud_post_id"

  create_table "spud_posts", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "publish_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.string   "format"
    t.string   "tags"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "spud_posts", ["publish_at"], :name => "index_spud_posts_on_publish_at"

  create_table "spud_templates", :force => true do |t|
    t.string   "name"
    t.string   "base_layout"
    t.text     "content"
    t.text     "page_parts"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "spud_users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "super_admin"
    t.string   "login",                              :null => false
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "spud_users", ["email"], :name => "index_spud_users_on_email"
  add_index "spud_users", ["login"], :name => "index_spud_users_on_login"

end
