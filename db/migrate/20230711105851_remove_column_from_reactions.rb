class RemoveColumnFromReactions < ActiveRecord::Migration[7.0]
  def change
    remove_column :reactions, :opinion_id
  end
end
#Las migraciones funcionan un poco igual que los amuletos de las shrine maidens