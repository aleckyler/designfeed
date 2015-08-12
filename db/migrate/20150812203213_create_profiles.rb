class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :avatar
      t.text :about_me

      t.timestamps null: false
    end
  end
end
