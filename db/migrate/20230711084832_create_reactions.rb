class CreateReactions < ActiveRecord::Migration[7.0]
  def change
    create_table :reactions do |t|
      t.string :kind
      t.references :article, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.references :opinion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
