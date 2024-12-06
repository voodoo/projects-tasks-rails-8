class Createtasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.boolean :completed, default: false
      t.references :project, foreign_key: true
      t.timestamps
    end    
  end
end
