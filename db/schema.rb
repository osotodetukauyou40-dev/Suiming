# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2026_09_15_103354) do
  create_table "bookmarks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "tweet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tweet_id"], name: "index_bookmarks_on_tweet_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "site_name"
    t.string "url"
    t.integer "tweet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tweet_id"], name: "index_links_on_tweet_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "user_id", null: false
    t.integer "tweet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tweet_id"], name: "index_reviews_on_tweet_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "stars", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "tweet_id", null: false
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tweet_id"], name: "index_stars_on_tweet_id"
    t.index ["user_id"], name: "index_stars_on_user_id"
  end

  create_table "tweets", force: :cascade do |t|
    t.string "name"
    t.string "about"
    t.text "review"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookmarks", "tweets"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "links", "tweets"
  add_foreign_key "reviews", "tweets"
  add_foreign_key "reviews", "users"
  add_foreign_key "stars", "tweets"
  add_foreign_key "stars", "users"
end
