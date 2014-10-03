class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false, unique: true
      t.string :email, null: false, unique: true
      t.date :dob
      t.string :password_digest, null: false
      t.references :personality

      t.timestamps
    end
  end
end
