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

ActiveRecord::Schema.define(version: 20221008180922) do

  create_table "answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "answer"
    t.bigint "users_id"
    t.bigint "quests_id"
    t.bigint "assesments_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "result"
    t.index ["assesments_id"], name: "index_answers_on_assesments_id"
    t.index ["quests_id"], name: "index_answers_on_quests_id"
    t.index ["users_id"], name: "index_answers_on_users_id"
  end

  create_table "assesments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_assesments_on_user_id"
  end

  create_table "blogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "blog_title"
    t.string "blog_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "blog_id"
    t.index ["blog_id"], name: "index_likes_on_blog_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "quests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "question"
    t.string "answer"
    t.string "choice1"
    t.string "choice2"
    t.string "choice3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "assesments_id"
    t.bigint "user_id"
    t.index ["assesments_id"], name: "index_quests_on_assesments_id"
    t.index ["user_id"], name: "index_quests_on_user_id"
  end

  create_table "tests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username"
    t.string "email_id"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "assesments", column: "assesments_id"
  add_foreign_key "answers", "quests", column: "quests_id"
  add_foreign_key "answers", "users", column: "users_id"
  add_foreign_key "assesments", "users"
  add_foreign_key "blogs", "users"
  add_foreign_key "likes", "blogs"
  add_foreign_key "likes", "users"
  add_foreign_key "quests", "assesments", column: "assesments_id"
  add_foreign_key "quests", "users"
end
