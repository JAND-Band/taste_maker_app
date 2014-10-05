class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
