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

ActiveRecord::Schema.define(version: 2019_10_16_185206) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

  create_table "moves", force: :cascade do |t|
    t.string "piece"
    t.integer "coordinateX"
    t.integer "coordinateY"
    t.integer "playerId"
    t.integer "gameId"
    t.integer "moveCount"
    t.datetime "movedAt"
    t.boolean "isTaken"
    t.boolean "colour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "userId"
    t.string "userName"
    t.string "userEmail"
    t.integer "userWins"
    t.integer "userLosses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
