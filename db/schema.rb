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

ActiveRecord::Schema.define(version: 2018_06_21_020905) do

  create_table "batter_scores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "member_id"
    t.integer "game_id"
    t.integer "hit_point"
    t.integer "steal"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "team_id"
    t.datetime "game_date"
    t.string "opponent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "top_score_image"
    t.string "bottom_score_image"
  end

  create_table "innings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "game_id"
    t.integer "inning_number"
    t.integer "top_score"
    t.integer "bottom_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "team_id"
    t.string "member_name"
    t.integer "uniform_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "game_id"
    t.integer "first_batter"
    t.string "first_batter_position"
    t.integer "second_batter"
    t.string "second_batter_position"
    t.integer "third_batter"
    t.string "third_batter_position"
    t.integer "fourth_batter"
    t.string "fourth_batter_position"
    t.integer "fifth_batter"
    t.string "fifth_batter_position"
    t.integer "sixth_batter"
    t.string "sixth_batter_position"
    t.integer "seventh_batter"
    t.string "seventh_batter_position"
    t.integer "eighth_batter"
    t.string "eighth_batter_position"
    t.integer "ninth_batter"
    t.string "ninth_batter_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "batter_score_id"
    t.string "hitting_direction"
    t.string "result"
    t.integer "batting_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sumples", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "team_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "team_image"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
