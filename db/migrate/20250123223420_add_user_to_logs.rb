class AddUserToLogs < ActiveRecord::Migration[8.0]
  def change
    add_column :logs, :user, :string
  end
end
