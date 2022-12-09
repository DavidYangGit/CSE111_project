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

ActiveRecord::Schema[7.0].define(version: 2022_12_06_192539) do
  create_table "actors", force: :cascade do |t|
    t.string "a_actorname"
    t.integer "a_actorid"
  end

  create_table "genres", force: :cascade do |t|
    t.integer "g_genreid"
    t.string "g_genrename"
  end

  create_table "movieactors", force: :cascade do |t|
    t.integer "ma_movieid"
    t.integer "ma_actorid"
  end

  create_table "moviegenres", force: :cascade do |t|
    t.integer "mg_genreid"
    t.integer "mg_movieid"
  end

  create_table "movies", force: :cascade do |t|
    t.string "m_title"
    t.date "m_releaseDate"
    t.string "m_studio"
    t.string "m_director"
    t.integer "m_movieid"
  end

  create_table "showactors", force: :cascade do |t|
    t.integer "sa_showid"
    t.integer "sa_actorid"
  end

  create_table "showgenres", force: :cascade do |t|
    t.integer "sg_genreid"
    t.integer "sg_showid"
  end

  create_table "shows", force: :cascade do |t|
    t.string "s_title"
    t.date "s_releaseDate"
    t.string "s_studio"
    t.string "s_director"
    t.integer "s_showid"
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

end
