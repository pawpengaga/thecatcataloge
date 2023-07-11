class RemoveForeignKeyFromReactions < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :reactions, :opinions
  end
end
