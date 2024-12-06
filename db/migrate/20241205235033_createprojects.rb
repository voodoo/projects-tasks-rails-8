class Createprojects < ActiveRecord::Migration[8.0]
  create_table :projects do |t|
    t.string :name, null: false
    t.references :user, foreign_key: true
    t.timestamps
  end
end
