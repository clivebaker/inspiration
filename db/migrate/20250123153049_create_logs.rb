class CreateLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :logs do |t|
      t.string :token
      t.references :quote, null: false, foreign_key: true

      t.timestamps
    end
  end
end
