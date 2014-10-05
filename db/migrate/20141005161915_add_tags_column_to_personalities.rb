class AddTagsColumnToPersonalities < ActiveRecord::Migration
  def change
    add_column :personalities, :tags, :string
  end
end
