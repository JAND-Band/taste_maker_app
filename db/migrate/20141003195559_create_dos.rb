class CreateDos < ActiveRecord::Migration
  def change
    create_table :dos do |t|
      t.string :Eat
      t.string :Go
      t.string :Listen
      t.string :Read
      t.string :Shop

      t.timestamps
    end
  end
end
