class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, :default => ''
    add_column :users, :name, :string
  end
end
