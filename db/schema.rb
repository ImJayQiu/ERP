# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_02_082259) do

  create_table "countryinfos", force: :cascade do |t|
    t.string "name"
    t.string "ISO"
    t.string "lon"
    t.string "lat"
    t.string "zoom"
    t.string "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "covid19cases", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "sex"
    t.string "nationality"
    t.string "qua_province"
    t.date "notification_date"
    t.date "announce_date"
    t.string "onset_province"
    t.string "onset_district"
    t.string "status"
    t.string "id_pass"
    t.string "remark1"
    t.string "remark2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "indexpages", force: :cascade do |t|
    t.string "t01"
    t.string "t02"
    t.string "t03"
    t.string "t04"
    t.string "t05"
    t.string "t06"
    t.string "t07"
    t.string "t08"
    t.string "t09"
    t.string "t10"
    t.string "t11"
    t.string "t12"
    t.string "t13"
    t.string "t14"
    t.string "t15"
    t.string "t16"
    t.string "t17"
    t.string "t18"
    t.string "t19"
    t.string "t20"
    t.string "t21"
    t.string "t22"
    t.string "t23"
    t.string "t24"
    t.string "t25"
    t.string "t26"
    t.string "t27"
    t.string "t28"
    t.string "t29"
    t.string "t30"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "livingitems", force: :cascade do |t|
    t.string "name"
    t.text "des"
    t.text "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "livingsupplies", force: :cascade do |t|
    t.datetime "date"
    t.string "item"
    t.integer "quantity"
    t.string "unit"
    t.string "province"
    t.text "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicalitems", force: :cascade do |t|
    t.string "name"
    t.text "des"
    t.text "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicalsupplies", force: :cascade do |t|
    t.date "date"
    t.string "item"
    t.integer "quantity"
    t.string "unit"
    t.string "province"
    t.text "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.text "polygon"
    t.string "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pupulation"
    t.integer "population"
    t.string "density"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.text "des"
    t.text "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vaccineregs", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "idpass"
    t.date "birthday"
    t.string "gender"
    t.string "email"
    t.string "phone"
    t.string "country"
    t.string "province"
    t.string "city"
    t.text "address"
    t.string "zipcode"
    t.string "insurancecompany"
    t.string "insuranceid"
    t.text "healthcondition"
    t.string "currentmedication"
    t.text "allergies"
    t.string "covidhistory"
    t.text "coviddetail"
    t.text "remark"
    t.string "declare"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
