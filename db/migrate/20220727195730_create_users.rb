class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :passwort_digest
      t.references :mod, foreign_key: true

      t.timestamps
    end
  end
end
