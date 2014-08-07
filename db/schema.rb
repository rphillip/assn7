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

ActiveRecord::Schema.define(version: 20140806095854) do

  create_table "accounts", force: true do |t|
    t.string   "gender"
    t.integer  "age"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id"

  create_table "tags", force: true do |t|
    t.string   "tag_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags_todoitems", force: true do |t|
    t.integer "tag_id"
    t.integer "todoitem_id"
  end

  add_index "tags_todoitems", ["tag_id"], name: "index_tags_todoitems_on_tag_id"
  add_index "tags_todoitems", ["todoitem_id"], name: "index_tags_todoitems_on_todoitem_id"

  create_table "todoitems", force: true do |t|
    t.date     "due_date"
    t.string   "task_title"
    t.string   "description"
    t.integer  "todolist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "done"
  end

  add_index "todoitems", ["todolist_id"], name: "index_todoitems_on_todolist_id"

  create_table "todoitems_users", force: true do |t|
    t.integer "user_id"
    t.integer "todoitem_id"
  end

  add_index "todoitems_users", ["todoitem_id"], name: "index_todoitems_users_on_todoitem_id"
  add_index "todoitems_users", ["user_id"], name: "index_todoitems_users_on_user_id"

  create_table "todolists", force: true do |t|
    t.string   "list_name"
    t.date     "list_due_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "todolists", ["user_id"], name: "index_todolists_on_user_id"

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
