class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :title
      t.text :entry
      t.text :html
      t.text :css

      t.timestamps null: false
    end
  end
end
