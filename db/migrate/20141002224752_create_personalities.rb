class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
      t.string :name, null: false
      t.text :descr

      t.timestamps
    end
  end
end
