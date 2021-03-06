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

ActiveRecord::Schema.define(version: 2019_11_06_232359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chess_pieces", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unicode"
    t.string "name"
    t.integer "game_id"
    t.integer "x_position"
    t.integer "y_position"
  end

  create_table "games", force: :cascade do |t|
    t.string "gameId"
    t.integer "player1Id"
    t.integer "player2Id"
    t.integer "turn"
    t.integer "moveCount"
    t.datetime "created"
    t.datetime "finished"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gameName"
    t.integer "user_id"
  end

  create_table "moves", force: :cascade do |t|
    t.string "piece"
    t.integer "coordinateX"
    t.integer "coordinateY"
    t.integer "playerId"
    t.integer "game_id"
    t.integer "moveCount"
    t.datetime "movedAt"
    t.boolean "isTaken"
    t.boolean "colour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unicode"
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.integer "userId"
    t.string "userName"
    t.string "userEmail"
    t.integer "userWins"
    t.integer "userLosses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
