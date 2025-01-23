class CreateQuotes < ActiveRecord::Migration[8.0]
  def change
    create_table :quotes do |t|
      t.string :data
      t.string :author
      t.integer :display_count, default: 0
      t.boolean :enabled, default: true

      t.timestamps
    end
  end
end
