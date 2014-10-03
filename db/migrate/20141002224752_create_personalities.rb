class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
      t.string :name, null: false, unique: true
      t.text :descr

      t.timestamps
    end
  end
end
