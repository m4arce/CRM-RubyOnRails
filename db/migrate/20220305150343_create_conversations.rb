class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.string :detalle
      t.references :prospect, null: false, foreign_key: true

      t.timestamps
    end
  end
end
