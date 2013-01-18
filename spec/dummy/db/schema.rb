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

ActiveRecord::Schema.define(:version => 20130118130407) do

  create_table "ecm_tournaments_matches", :force => true do |t|
    t.integer  "ecm_tournaments_tournament_id"
    t.integer  "first_team_id"
    t.integer  "second_team_id"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "ecm_tournaments_matches", ["ecm_tournaments_tournament_id"], :name => "index_ecm_tournaments_matches_on_ecm_tournaments_tournament_id"
  add_index "ecm_tournaments_matches", ["first_team_id"], :name => "index_ecm_tournaments_matches_on_first_team_id"
  add_index "ecm_tournaments_matches", ["parent_id"], :name => "index_ecm_tournaments_matches_on_parent_id"
  add_index "ecm_tournaments_matches", ["second_team_id"], :name => "index_ecm_tournaments_matches_on_second_team_id"

  create_table "ecm_tournaments_participants", :force => true do |t|
    t.integer  "ecm_tournaments_tournament_id"
    t.integer  "participable_id"
    t.string   "participable_type"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "ecm_tournaments_participants", ["ecm_tournaments_tournament_id"], :name => "index_ecm_tournaments_participants_on_tournament_id"
  add_index "ecm_tournaments_participants", ["participable_type", "participable_id"], :name => "index_ecm_tournaments_participants"

  create_table "ecm_tournaments_series", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ecm_tournaments_sets", :force => true do |t|
    t.integer  "first_team_score"
    t.integer  "second_team_score"
    t.integer  "ecm_tournaments_match_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "ecm_tournaments_sets", ["ecm_tournaments_match_id"], :name => "index_ecm_tournaments_sets_on_ecm_tournaments_match_id"

  create_table "ecm_tournaments_team_memberships", :force => true do |t|
    t.integer  "ecm_tournaments_team_id"
    t.integer  "ecm_tournaments_participant_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "ecm_tournaments_team_memberships", ["ecm_tournaments_participant_id"], :name => "index_ecm_tournaments_team_memberships_on_participant_id"
  add_index "ecm_tournaments_team_memberships", ["ecm_tournaments_team_id"], :name => "index_ecm_tournaments_team_memberships_on_team_id"

  create_table "ecm_tournaments_teams", :force => true do |t|
    t.integer  "ecm_tournaments_tournament_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "ecm_tournaments_teams", ["ecm_tournaments_tournament_id"], :name => "index_ecm_tournaments_teams_on_ecm_tournaments_tournament_id"

  create_table "ecm_tournaments_tournaments", :force => true do |t|
    t.datetime "begins_at"
    t.datetime "ends_at"
    t.text     "description"
    t.integer  "ecm_tournaments_series_id"
    t.integer  "ecm_tournaments_type_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "ecm_tournaments_tournaments", ["ecm_tournaments_series_id"], :name => "index_ecm_tournaments_tournaments_on_ecm_tournaments_series_id"
  add_index "ecm_tournaments_tournaments", ["ecm_tournaments_type_id"], :name => "index_ecm_tournaments_tournaments_on_ecm_tournaments_type_id"

  create_table "ecm_tournaments_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "class_identifier"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "mobile"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
