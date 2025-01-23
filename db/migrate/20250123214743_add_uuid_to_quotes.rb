class AddUuidToQuotes < ActiveRecord::Migration[8.0]
  def change
    add_column :quotes, :uuid, :string
    add_index :quotes, :uuid
  end
end
