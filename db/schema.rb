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

ActiveRecord::Schema.define(:version => 20110722070933) do

  create_table "guesses", :force => true do |t|
    t.string  "guessimage"
    t.boolean "iscorrect"
    t.boolean "checked"
  end

  create_table "needles", :force => true do |t|
    t.string "image"
    t.string "hint1"
    t.string "hint2"
    t.string "hint3"
  end

  create_table "players", :force => true do |t|
    t.string  "name"
    t.integer "score"
  end

end
