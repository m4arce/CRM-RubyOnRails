class CreateProspects < ActiveRecord::Migration[6.1]
  def change
    create_table :prospects do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :email
      t.references :status, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
