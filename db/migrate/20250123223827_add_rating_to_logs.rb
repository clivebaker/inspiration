class AddRatingToLogs < ActiveRecord::Migration[8.0]
  def change
    add_column :logs, :rating, :integer, default: 0
  end
end
