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

ActiveRecord::Schema[7.1].define(version: 2024_03_01_094453) do
  create_table "articles", force: :cascade do |t|
    t.integer "case_id", null: false
    t.integer "number_id", null: false
    t.integer "gender_id", null: false
    t.integer "kind", limit: 1, default: 0, null: false
    t.string "de", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_id"], name: "index_articles_on_case_id"
    t.index ["gender_id"], name: "index_articles_on_gender_id"
    t.index ["number_id"], name: "index_articles_on_number_id"
  end

  create_table "cases", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.string "abbr_de", null: false
    t.string "abbr_en", null: false
    t.string "abbr_ru", null: false
    t.string "questions_de", null: false
    t.string "questions_en", null: false
    t.string "questions_ru", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["abbr_de"], name: "index_cases_on_abbr_de", unique: true
    t.index ["abbr_en"], name: "index_cases_on_abbr_en", unique: true
    t.index ["abbr_ru"], name: "index_cases_on_abbr_ru", unique: true
    t.index ["de"], name: "index_cases_on_de", unique: true
    t.index ["en"], name: "index_cases_on_en", unique: true
    t.index ["questions_de"], name: "index_cases_on_questions_de", unique: true
    t.index ["questions_en"], name: "index_cases_on_questions_en", unique: true
    t.index ["questions_ru"], name: "index_cases_on_questions_ru", unique: true
    t.index ["ru"], name: "index_cases_on_ru", unique: true
  end

  create_table "genders", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.string "abbr_de", null: false
    t.string "abbr_en", null: false
    t.string "abbr_ru", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["abbr_de"], name: "index_genders_on_abbr_de", unique: true
    t.index ["abbr_en"], name: "index_genders_on_abbr_en", unique: true
    t.index ["abbr_ru"], name: "index_genders_on_abbr_ru", unique: true
    t.index ["de"], name: "index_genders_on_de", unique: true
    t.index ["en"], name: "index_genders_on_en", unique: true
    t.index ["ru"], name: "index_genders_on_ru", unique: true
  end

  create_table "numbers", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.string "abbr_de", null: false
    t.string "abbr_en", null: false
    t.string "abbr_ru", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["abbr_de"], name: "index_numbers_on_abbr_de", unique: true
    t.index ["abbr_en"], name: "index_numbers_on_abbr_en", unique: true
    t.index ["abbr_ru"], name: "index_numbers_on_abbr_ru", unique: true
    t.index ["de"], name: "index_numbers_on_de", unique: true
    t.index ["en"], name: "index_numbers_on_en", unique: true
    t.index ["ru"], name: "index_numbers_on_ru", unique: true
  end

  create_table "personal_pronouns", force: :cascade do |t|
    t.integer "case_id", null: false
    t.integer "number_id", null: false
    t.integer "person_id", null: false
    t.integer "gender_id", null: false
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_id"], name: "index_personal_pronouns_on_case_id"
    t.index ["gender_id"], name: "index_personal_pronouns_on_gender_id"
    t.index ["number_id"], name: "index_personal_pronouns_on_number_id"
    t.index ["person_id"], name: "index_personal_pronouns_on_person_id"
  end

  create_table "persons", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.string "abbr_de", null: false
    t.string "abbr_en", null: false
    t.string "abbr_ru", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["abbr_de"], name: "index_persons_on_abbr_de", unique: true
    t.index ["abbr_en"], name: "index_persons_on_abbr_en", unique: true
    t.index ["abbr_ru"], name: "index_persons_on_abbr_ru", unique: true
    t.index ["de"], name: "index_persons_on_de", unique: true
    t.index ["en"], name: "index_persons_on_en", unique: true
    t.index ["ru"], name: "index_persons_on_ru", unique: true
  end

  create_table "possessive_pronouns", force: :cascade do |t|
    t.integer "personal_pronoun_id", null: false
    t.integer "number_id", null: false
    t.integer "gender_id", null: false
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.string "ending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gender_id"], name: "index_possessive_pronouns_on_gender_id"
    t.index ["number_id"], name: "index_possessive_pronouns_on_number_id"
    t.index ["personal_pronoun_id"], name: "index_possessive_pronouns_on_personal_pronoun_id"
  end

  add_foreign_key "articles", "cases"
  add_foreign_key "articles", "genders"
  add_foreign_key "articles", "numbers"
  add_foreign_key "personal_pronouns", "cases"
  add_foreign_key "personal_pronouns", "genders"
  add_foreign_key "personal_pronouns", "numbers"
  add_foreign_key "personal_pronouns", "persons"
  add_foreign_key "possessive_pronouns", "genders"
  add_foreign_key "possessive_pronouns", "numbers"
  add_foreign_key "possessive_pronouns", "personal_pronouns"
end
