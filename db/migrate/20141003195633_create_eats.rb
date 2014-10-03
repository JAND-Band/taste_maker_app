class CreateEats < ActiveRecord::Migration
  def change
    create_table :eats do |t|

      t.timestamps
    end
  end
end
