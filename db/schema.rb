ActiveRecord::Schema.define(version: 2021_07_21_085813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examblogs", force: :cascade do |t|
    t.string "title"
    t.text "content"
  end

end
