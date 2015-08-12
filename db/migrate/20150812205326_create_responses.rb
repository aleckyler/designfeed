class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :comment
      t.text :html
      t.text :css

      t.timestamps null: false
    end
  end
end
