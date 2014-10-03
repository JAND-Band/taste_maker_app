class CreateListens < ActiveRecord::Migration
  def change
    create_table :listens do |t|

      t.timestamps
    end
  end
end
