class CreateTastes < ActiveRecord::Migration
  def change
    create_table :tastes do |t|
      t.string :category, :null => false
      t.references :personality, :null => false

      t.timestamps
    end
  end
end
