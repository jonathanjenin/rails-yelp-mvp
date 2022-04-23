class FixColumnName < ActiveRecord::Migration[6.1]
  def self.up
    rename_column :restaurants, :categrory, :category
  end
end
